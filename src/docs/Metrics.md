
# Metrics

Latest metrics state as persisted by the encoder leader.

## Properties

Name | Type
------------ | -------------
`nodes` | [{ [key: string]: NodeView; }](NodeView.md)

## Example

```typescript
import type { Metrics } from ''

// TODO: Update the object below with actual values
const example = {
  "nodes": null,
} satisfies Metrics

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Metrics
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


