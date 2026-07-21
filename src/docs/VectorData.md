
# VectorData

Vector data for a specific vector. Contains the precalculated vector values, which can be either dense or sparse.

## Properties

Name | Type
------------ | -------------
`vector_name` | string
`field` | string
`vector_type` | string
`dense_vector` | Array&lt;number&gt;
`sparse_indices` | Array&lt;number&gt;
`sparse_values` | Array&lt;number&gt;

## Example

```typescript
import type { VectorData } from ''

// TODO: Update the object below with actual values
const example = {
  "vector_name": null,
  "field": null,
  "vector_type": null,
  "dense_vector": null,
  "sparse_indices": null,
  "sparse_values": null,
} satisfies VectorData

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as VectorData
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


