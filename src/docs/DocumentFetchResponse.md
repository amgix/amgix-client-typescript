
# DocumentFetchResponse

Response for paginated document fetching.

## Properties

Name | Type
------------ | -------------
`documents` | [Array&lt;Document&gt;](Document.md)
`after` | string

## Example

```typescript
import type { DocumentFetchResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "documents": null,
  "after": null,
} satisfies DocumentFetchResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DocumentFetchResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


