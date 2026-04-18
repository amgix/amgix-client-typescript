
# SystemInfoResponse


## Properties

Name | Type
------------ | -------------
`amgix_version` | string
`database_kind` | string
`database_version` | string
`database_features` | { [key: string]: boolean; }
`rabbitmq_version` | string
`collection_count` | number

## Example

```typescript
import type { SystemInfoResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "amgix_version": null,
  "database_kind": null,
  "database_version": null,
  "database_features": null,
  "rabbitmq_version": null,
  "collection_count": null,
} satisfies SystemInfoResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SystemInfoResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


