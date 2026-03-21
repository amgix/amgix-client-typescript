
# MetadataFilter

Recursive metadata filter structure (modeled on Qdrant filter with and/or/not).

## Properties

Name | Type
------------ | -------------
`and` | [Array&lt;MetadataFilter&gt;](MetadataFilter.md)
`or` | [Array&lt;MetadataFilter&gt;](MetadataFilter.md)
`not` | [MetadataFilter](MetadataFilter.md)
`key` | string
`op` | string
`value` | any

## Example

```typescript
import type { MetadataFilter } from ''

// TODO: Update the object below with actual values
const example = {
  "and": null,
  "or": null,
  "not": null,
  "key": null,
  "op": null,
  "value": null,
} satisfies MetadataFilter

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as MetadataFilter
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


