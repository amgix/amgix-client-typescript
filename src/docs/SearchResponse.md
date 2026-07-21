
# SearchResponse

Response from a search query.

## Properties

Name | Type
------------ | -------------
`results` | [Array&lt;SearchResult&gt;](SearchResult.md)
`facet_counts` | { [key: string]: { [key: string]: number; }; }
`query_time_ms` | number

## Example

```typescript
import type { SearchResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "results": null,
  "facet_counts": null,
  "query_time_ms": null,
} satisfies SearchResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SearchResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


