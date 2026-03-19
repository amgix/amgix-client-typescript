#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
cd "$ROOT"

usage() {
  echo "Usage: $0 <version>" >&2
  echo "  version: Docker image tag without -noembed (e.g. v1.0.0 or v1.0.0-beta2.45)" >&2
  exit 1
}

[[ $# -eq 1 ]] || usage
VERSION="$1"

if [[ -z "${VERSION// }" ]]; then
  echo "error: version is empty" >&2
  exit 1
fi
if [[ ! "$VERSION" =~ ^v[0-9]+(\.[0-9]+)*(-[a-zA-Z0-9][a-zA-Z0-9.]*)?$ ]]; then
  echo "error: invalid version format (got: $VERSION). Use v plus semver, e.g. v1.0.0 or v1.0.0-beta2.45" >&2
  exit 1
fi

CONTAINER_NAME="amgix-one-gen-$$"
cleanup() {
  docker rm -f "$CONTAINER_NAME" 2>/dev/null || true
}
trap cleanup EXIT

echo "Starting amgixio/amgix-one:${VERSION}-noembed ..."
docker run -d --name "$CONTAINER_NAME" -p 8234:8234 "amgixio/amgix-one:${VERSION}-noembed"

echo "Waiting for API (up to 120s) ..."
timeout 120 bash -c 'until curl -sSf http://localhost:8234/v1/health/check >/dev/null; do echo "  ..."; sleep 5; done'
echo "API ready"

echo "Fetching OpenAPI spec ..."
curl -sSL -o openapi.json http://localhost:8234/openapi.json

cleanup
trap - EXIT

[[ -f openapi-downgrade.py ]] || { echo "error: openapi-downgrade.py not found in repo root" >&2; exit 1; }
echo "Downgrading spec ..."
python3 openapi-downgrade.py -o openapi-down.json -f json openapi.json

PACKAGE_VERSION="${VERSION#v}"
echo "Setting client.yaml packageVersion to ${PACKAGE_VERSION} ..."
sed -i.bak "s/^  packageVersion: .*/  packageVersion: ${PACKAGE_VERSION}/" client.yaml
rm -f client.yaml.bak

echo "Generating TypeScript client ..."
docker run --rm \
  -v "$ROOT":/local \
  -w /local \
  openapitools/openapi-generator-cli:latest \
  generate -c client.yaml --skip-validate-spec

echo "Done. Review changes in client.yaml, under src/, and commit if correct."
