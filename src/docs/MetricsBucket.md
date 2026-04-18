
# MetricsBucket

One mergeable aligned bucket that can be used for live and historical metrics.

## Properties

Name | Type
------------ | -------------
`key` | string
`dims` | Array&lt;string&gt;
`bucket_start` | number
`bucket_seconds` | number
`value` | number
`n` | number

## Example

```typescript
import type { MetricsBucket } from ''

// TODO: Update the object below with actual values
const example = {
  "key": null,
  "dims": null,
  "bucket_start": null,
  "bucket_seconds": null,
  "value": null,
  "n": null,
} satisfies MetricsBucket

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as MetricsBucket
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


