
# FacetOptions

Tuning for faceting; used only when SearchQuery.facets is True.

## Properties

Name | Type
------------ | -------------
`prefetch_multiplier` | number
`max_values` | number

## Example

```typescript
import type { FacetOptions } from ''

// TODO: Update the object below with actual values
const example = {
  "prefetch_multiplier": null,
  "max_values": null,
} satisfies FacetOptions

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as FacetOptions
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


