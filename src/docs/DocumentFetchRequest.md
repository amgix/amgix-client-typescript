
# DocumentFetchRequest

Request body for paginated document fetching.

## Properties

Name | Type
------------ | -------------
`page_size` | number
`after` | string
`metadata_filter` | [MetadataFilter](MetadataFilter.md)
`document_tags` | Array&lt;string&gt;
`document_tags_match_all` | boolean

## Example

```typescript
import type { DocumentFetchRequest } from ''

// TODO: Update the object below with actual values
const example = {
  "page_size": null,
  "after": null,
  "metadata_filter": null,
  "document_tags": null,
  "document_tags_match_all": null,
} satisfies DocumentFetchRequest

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as DocumentFetchRequest
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


