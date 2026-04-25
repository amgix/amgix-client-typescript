
# DocumentStatus

Individual status entry for a document.

## Properties

Name | Type
------------ | -------------
`status` | string
`op_type` | string
`info` | string
`timestamp` | Date
`queue_id` | string
`try_count` | number

## Example

```typescript
import type { DocumentStatus } from ''

// TODO: Update the object below with actual values
const example = {
  "status": null,
  "op_type": null,
  "info": null,
  "timestamp": null,
  "queue_id": null,
  "try_count": null,
} satisfies DocumentStatus

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DocumentStatus
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


