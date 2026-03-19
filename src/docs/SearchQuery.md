
# SearchQuery

Configuration for a search query. Defines the query string and vector weights. This is the model that will be sent by end users to the search API endpoint.

## Properties

Name | Type
------------ | -------------
`query` | string
`vector_weights` | [Array&lt;VectorSearchWeight&gt;](VectorSearchWeight.md)
`custom_vectors` | [Array&lt;CustomVector&gt;](CustomVector.md)
`limit` | number
`score_threshold` | number
`document_tags` | Array&lt;string&gt;
`document_tags_match_all` | boolean
`metadata_filter` | [MetadataFilter](MetadataFilter.md)
`raw_scores` | boolean

## Example

```typescript
import type { SearchQuery } from ''

// TODO: Update the object below with actual values
const example = {
  "query": null,
  "vector_weights": null,
  "custom_vectors": null,
  "limit": null,
  "score_threshold": null,
  "document_tags": null,
  "document_tags_match_all": null,
  "metadata_filter": null,
  "raw_scores": null,
} satisfies SearchQuery

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SearchQuery
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


