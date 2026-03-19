
# CollectionConfig

API model for collection configuration - uses VectorConfig.

## Properties

Name | Type
------------ | -------------
`vectors` | [Array&lt;VectorConfig&gt;](VectorConfig.md)
`store_content` | boolean
`metadata_indexes` | [Array&lt;MetadataIndex&gt;](MetadataIndex.md)

## Example

```typescript
import type { CollectionConfig } from ''

// TODO: Update the object below with actual values
const example = {
  "vectors": null,
  "store_content": null,
  "metadata_indexes": null,
} satisfies CollectionConfig

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as CollectionConfig
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


