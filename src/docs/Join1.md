
# Join1

Optional join of another collection onto each search result. Forms: \'<collection>\', \'<collection>[<parent>=<child>]\', or with \'(<filter>)\'. Parent refs: $id, $.meta.<key>. Child refs: $$id, $$.meta.<key>. Omitted \'[]\' defaults to [$id=$$id]. Joined documents appear under joined[collection_name].

## Properties

Name | Type
------------ | -------------

## Example

```typescript
import type { Join1 } from ''

// TODO: Update the object below with actual values
const example = {
} satisfies Join1

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Join1
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


