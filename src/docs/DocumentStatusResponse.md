
# DocumentStatusResponse

Complete status response for a document including queue states.

## Properties

Name | Type
------------ | -------------
`statuses` | [Array&lt;DocumentStatus&gt;](DocumentStatus.md)

## Example

```typescript
import type { DocumentStatusResponse } from ''

// TODO: Update the object below with actual values
const example = {
  "statuses": null,
} satisfies DocumentStatusResponse

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DocumentStatusResponse
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


