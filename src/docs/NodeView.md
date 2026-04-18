
# NodeView

Snapshot of a single cluster node as last reported to the leader.

## Properties

Name | Type
------------ | -------------
`role` | string
`is_leader` | boolean
`last_seen` | number
`meta` | { [key: string]: any; }
`metrics` | [Array&lt;NodeMetricSeries&gt;](NodeMetricSeries.md)

## Example

```typescript
import type { NodeView } from ''

// TODO: Update the object below with actual values
const example = {
  "role": null,
  "is_leader": null,
  "last_seen": null,
  "meta": null,
  "metrics": null,
} satisfies NodeView

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as NodeView
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


