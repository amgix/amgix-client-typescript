
# QueueInfo

Queue statistics for a collection. Provides counts of documents in different queue states.

## Properties

Name | Type
------------ | -------------
`queued` | number
`requeued` | number
`failed` | number
`total` | number

## Example

```typescript
import type { QueueInfo } from ''

// TODO: Update the object below with actual values
const example = {
  "queued": null,
  "requeued": null,
  "failed": null,
  "total": null,
} satisfies QueueInfo

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QueueInfo
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


