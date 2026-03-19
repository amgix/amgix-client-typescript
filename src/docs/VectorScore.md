
# VectorScore

Individual vector score for a search result

## Properties

Name | Type
------------ | -------------
`field` | string
`vector` | string
`score` | number
`rank` | number

## Example

```typescript
import type { VectorScore } from ''

// TODO: Update the object below with actual values
const example = {
  "field": null,
  "vector": null,
  "score": null,
  "rank": null,
} satisfies VectorScore

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as VectorScore
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


