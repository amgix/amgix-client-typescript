
# VectorSearchWeight

Configuration for a vector search weight. Used in search queries to specify which vectors to search with and their weights.

## Properties

Name | Type
------------ | -------------
`vector_name` | string
`weight` | number
`field` | string

## Example

```typescript
import type { VectorSearchWeight } from ''

// TODO: Update the object below with actual values
const example = {
  "vector_name": null,
  "weight": null,
  "field": null,
} satisfies VectorSearchWeight

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as VectorSearchWeight
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


