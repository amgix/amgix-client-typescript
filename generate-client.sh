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
  docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1 || true
}
trap cleanup EXIT

echo "Starting amgixio/amgix-one:${VERSION}-noembed ..."
docker run -d --name "$CONTAINER_NAME" -p 8234:8234 "amgixio/amgix-one:${VERSION}-noembed"

echo "Waiting for API (up to 120s) ..."
sleep 3
timeout 120 bash -c '
  while true; do
    CODE=$(curl -sS -o /tmp/amgix-ready.json -w "%{http_code}" http://localhost:8234/v1/health/ready 2>/dev/null) || CODE=000
    if [ "$CODE" = "200" ]; then break; fi
    echo "  ... (HTTP ${CODE})"
    sleep 5
  done
'
echo "API ready"

PACKAGE_VERSION="${VERSION#v}"
echo "Setting client.yaml packageVersion to ${PACKAGE_VERSION} ..."
sed -i.bak "s/^  packageVersion: .*/  packageVersion: ${PACKAGE_VERSION}/" client.yaml
rm -f client.yaml.bak

echo "Setting src/package.json version to ${PACKAGE_VERSION} ..."
sed -i.bak "s|^  \"version\": \".*\"|  \"version\": \"${PACKAGE_VERSION}\"|" "${ROOT}/src/package.json"
rm -f "${ROOT}/src/package.json.bak"

echo "Generating TypeScript client ..."
# Generator runs in a container; localhost there is not the host. host.docker.internal
# reaches the host (amgix-one on 8234). Linux needs explicit host mapping.
docker run --rm \
  --add-host=host.docker.internal:host-gateway \
  -v "$ROOT":/local \
  -w /local \
  openapitools/openapi-generator-cli:latest \
  generate -c client.yaml --skip-validate-spec

cleanup
trap - EXIT

echo "Done. Review changes in client.yaml, src/package.json, under src/, and commit if correct."
