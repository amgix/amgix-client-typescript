
# CollectionStatsResponse

Persisted index statistics for a collection (encoder-maintained counts) and queue counts.

## Properties

Name | Type
------------ | -------------
`doc_count` | number
`queue` | [QueueInfo](QueueInfo.md)

## Example

```typescript
import type { CollectionStatsResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "doc_count": null,
  "queue": null,
} satisfies CollectionStatsResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CollectionStatsResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


