
# VectorConfig

Configuration for a vector generation method.  This model defines how vectors should be generated for a specific field or set of fields. Different vector types have different requirements and behaviors.

## Properties

Name | Type
------------ | -------------
`name` | string
`type` | string
`model` | string
`revision` | string
`query_model` | string
`query_revision` | string
`dimensions` | number
`top_k` | number
`wmtr_word_weight` | number
`index_fields` | Array&lt;string&gt;
`language_default_code` | string
`language_detect` | boolean
`language_confidence` | number
`normalization` | boolean
`dense_distance` | string
`keep_case` | boolean

## Example

```typescript
import type { VectorConfig } from ''

// TODO: Update the object below with actual values
const example = {
  "name": null,
  "type": null,
  "model": null,
  "revision": null,
  "query_model": null,
  "query_revision": null,
  "dimensions": null,
  "top_k": null,
  "wmtr_word_weight": null,
  "index_fields": null,
  "language_default_code": null,
  "language_detect": null,
  "language_confidence": null,
  "normalization": null,
  "dense_distance": null,
  "keep_case": null,
} satisfies VectorConfig

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as VectorConfig
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


