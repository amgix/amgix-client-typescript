
# MetricTrend

Historical buckets for a single metric key at a given resolution.

## Properties

Name | Type
------------ | -------------
`key` | string
`bucket_seconds` | number
`buckets` | [Array&lt;MetricsBucket&gt;](MetricsBucket.md)

## Example

```typescript
import type { MetricTrend } from ''

// TODO: Update the object below with actual values
const example = {
  "key": null,
  "bucket_seconds": null,
  "buckets": null,
} satisfies MetricTrend

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as MetricTrend
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


