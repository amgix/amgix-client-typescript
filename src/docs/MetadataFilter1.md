
# MetadataFilter1

Optional metadata filter. Accepts either a MetadataFilter object or a filter expression string (e.g. \'year > 2020 AND status = \"active\"\'). Only fields declared in collection metadata_indexes can be filtered.

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
import type { MetadataFilter1 } from ''

// TODO: Update the object below with actual values
const example = {
  "and": null,
  "or": null,
  "not": null,
  "key": null,
  "op": null,
  "value": null,
} satisfies MetadataFilter1

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as MetadataFilter1
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


