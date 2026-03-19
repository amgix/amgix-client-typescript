
# Document

Document model representing the structure of documents in the system.  This model is used for document ingestion, retrieval, and search results. Content is excluded from database storage for performance and cost reasons.

## Properties

Name | Type
------------ | -------------
`id` | string
`timestamp` | Date
`tags` | Array&lt;string&gt;
`name` | string
`description` | string
`content` | string
`metadata` | { [key: string]: any; }
`custom_vectors` | [Array&lt;CustomDocumentVector&gt;](CustomDocumentVector.md)

## Example

```typescript
import type { Document } from ''

// TODO: Update the object below with actual values
const example = {
  "id": null,
  "timestamp": null,
  "tags": null,
  "name": null,
  "description": null,
  "content": null,
  "metadata": null,
  "custom_vectors": null,
} satisfies Document

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Document
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


