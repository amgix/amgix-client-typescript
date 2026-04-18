
# NodeMetricSeries

One metric stream on a node with mergeable window stats.  key is the metric name (e.g. \'batches\', \'inference_ms\', \'inference_origin_ms\', \'hops\'). dims are optional dimensions (e.g. vector type, model name, revision). windows are keyed by window size in seconds.

## Properties

Name | Type
------------ | -------------
`key` | string
`dims` | Array&lt;string&gt;
`windows` | [{ [key: string]: WindowSample; }](WindowSample.md)
`last_seen` | number

## Example

```typescript
import type { NodeMetricSeries } from ''

// TODO: Update the object below with actual values
const example = {
  "key": null,
  "dims": null,
  "windows": null,
  "last_seen": null,
} satisfies NodeMetricSeries

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as NodeMetricSeries
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


