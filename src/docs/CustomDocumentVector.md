
# CustomDocumentVector

Custom vector for documents - adds field specification

## Properties

Name | Type
------------ | -------------
`vector_name` | string
`vector` | [Vector](Vector.md)
`field` | string

## Example

```typescript
import type { CustomDocumentVector } from ''

// TODO: Update the object below with actual values
const example = {
  "vector_name": null,
  "vector": null,
  "field": null,
} satisfies CustomDocumentVector

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CustomDocumentVector
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


