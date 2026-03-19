
# SearchResult

A search result containing document information and its relevance score. Inherits from Document but excludes content field and adds score.  Validation is disabled for SearchResult as it is constructed internally from validated data.

## Properties

Name | Type
------------ | -------------
`id` | string
`timestamp` | Date
`tags` | Array&lt;string&gt;
`name` | string
`description` | string
`metadata` | { [key: string]: any; }
`custom_vectors` | [Array&lt;CustomDocumentVector&gt;](CustomDocumentVector.md)
`score` | number
`vector_scores` | [Array&lt;VectorScore&gt;](VectorScore.md)

## Example

```typescript
import type { SearchResult } from ''

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "timestamp": null,
  "tags": null,
  "name": null,
  "description": null,
  "metadata": null,
  "custom_vectors": null,
  "score": null,
  "vector_scores": null,
} satisfies SearchResult

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as SearchResult
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


