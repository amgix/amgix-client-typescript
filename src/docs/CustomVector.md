
# CustomVector

Base custom vector model for search queries

## Properties

Name | Type
------------ | -------------
`vector_name` | string
`vector` | [Vector](Vector.md)

## Example

```typescript
import type { CustomVector } from ''

// TODO: Update the object below with actual values
const example = {
  "vector_name": null,
  "vector": null,
} satisfies CustomVector

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CustomVector
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


