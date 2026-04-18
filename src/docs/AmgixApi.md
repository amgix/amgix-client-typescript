# AmgixApi

All URIs are relative to *http://localhost:8234*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**collectionExists**](AmgixApi.md#collectionexists) | **GET** /v1/collections/{collection_name}/exists | Collection Exists |
| [**createCollection**](AmgixApi.md#createcollection) | **POST** /v1/collections/{collection_name} | Create Collection |
| [**deleteCollection**](AmgixApi.md#deletecollection) | **DELETE** /v1/collections/{collection_name} | Delete Collection |
| [**deleteCollectionQueue**](AmgixApi.md#deletecollectionqueue) | **DELETE** /v1/collections/{collection_name}/queue | Delete Collection Queue |
| [**deleteDocument**](AmgixApi.md#deletedocument) | **DELETE** /v1/collections/{collection_name}/documents/{document_id} | Delete Document |
| [**emptyCollection**](AmgixApi.md#emptycollection) | **POST** /v1/collections/{collection_name}/empty | Empty Collection |
| [**getCollectionConfig**](AmgixApi.md#getcollectionconfig) | **GET** /v1/collections/{collection_name} | Get Collection Config |
| [**getCollectionQueueInfo**](AmgixApi.md#getcollectionqueueinfo) | **GET** /v1/collections/{collection_name}/queue/info | Get Collection Queue Info |
| [**getCollectionStats**](AmgixApi.md#getcollectionstats) | **GET** /v1/collections/{collection_name}/stats | Get Collection Stats |
| [**getDocument**](AmgixApi.md#getdocument) | **GET** /v1/collections/{collection_name}/documents/{document_id} | Get Document |
| [**getDocumentStatus**](AmgixApi.md#getdocumentstatus) | **GET** /v1/collections/{collection_name}/documents/{document_id}/status | Get Document Status |
| [**healthCheck**](AmgixApi.md#healthcheck) | **GET** /v1/health/check | Health |
| [**healthReady**](AmgixApi.md#healthready) | **GET** /v1/health/ready | Readiness Check |
| [**listCollections**](AmgixApi.md#listcollections) | **GET** /v1/collections | List Collections |
| [**metricsCurrent**](AmgixApi.md#metricscurrent) | **GET** /v1/metrics/current | Metrics Current |
| [**metricsDefinitions**](AmgixApi.md#metricsdefinitions) | **GET** /v1/metrics/definitions | Metrics Definitions |
| [**metricsPrometheus**](AmgixApi.md#metricsprometheus) | **GET** /v1/metrics/prometheus | Metrics Prometheus |
| [**metricsTrends**](AmgixApi.md#metricstrends) | **GET** /v1/metrics/trends | Metrics Trends |
| [**search**](AmgixApi.md#search) | **POST** /v1/collections/{collection_name}/search | Search |
| [**systemInfo**](AmgixApi.md#systeminfo) | **GET** /v1/system/info | System Info |
| [**upsertDocument**](AmgixApi.md#upsertdocument) | **POST** /v1/collections/{collection_name}/documents | Upsert Document |
| [**upsertDocumentSync**](AmgixApi.md#upsertdocumentsync) | **POST** /v1/collections/{collection_name}/documents/sync | Upsert Document Sync |
| [**upsertDocumentsBulk**](AmgixApi.md#upsertdocumentsbulk) | **POST** /v1/collections/{collection_name}/documents/bulk | Upsert Documents Bulk |
| [**version**](AmgixApi.md#version) | **GET** /v1/version | Version |



## collectionExists

> CollectionExistsResponse collectionExists(collectionName)

Collection Exists

Check if a collection exists. Always returns 200 with exists true or false.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { CollectionExistsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies CollectionExistsRequest;

  try {
    const data = await api.collectionExists(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**CollectionExistsResponse**](CollectionExistsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## createCollection

> OkResponse createCollection(collectionName, collectionConfig)

Create Collection

Create a new collection.  This endpoint creates a new collection with the specified name and vector configurations. It validates the provided model configurations and ensures all required features are supported by the database.  Args:     collection_name: The unique name for the new collection (alphanumeric, underscores, hyphens only).     config: Configuration details for the collection, including vector types and storage options.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.  Raises:     HTTPException:         - 400 if model validation fails or required features are not supported.         - 409 if a collection with the same name already exists.         - 500 if the collection creation fails in the database.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { CreateCollectionRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // CollectionConfig
    collectionConfig: ...,
  } satisfies CreateCollectionRequest;

  try {
    const data = await api.createCollection(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **collectionConfig** | [CollectionConfig](CollectionConfig.md) |  | |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteCollection

> OkResponse deleteCollection(collectionName)

Delete Collection

Delete a collection.  Deletes a collection and all its associated data. This operation is irreversible.  Args:     collection_name: The name of the collection to delete.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { DeleteCollectionRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies DeleteCollectionRequest;

  try {
    const data = await api.deleteCollection(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteCollectionQueue

> OkResponse deleteCollectionQueue(collectionName)

Delete Collection Queue

Delete all queue entries for a collection.  Removes all documents from the processing queue for a specified collection. This does not affect documents already indexed in the collection.  Args:     collection_name: The name of the collection for which to delete queue entries.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { DeleteCollectionQueueRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies DeleteCollectionQueueRequest;

  try {
    const data = await api.deleteCollectionQueue(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## deleteDocument

> OkResponse deleteDocument(collectionName, documentId)

Delete Document

Delete a document.  Deletes a specific document by its ID from the specified collection.  Args:     collection_name: The name of the collection.     document_id: The unique identifier of the document to delete.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { DeleteDocumentRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // string
    documentId: documentId_example,
  } satisfies DeleteDocumentRequest;

  try {
    const data = await api.deleteDocument(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **documentId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## emptyCollection

> OkResponse emptyCollection(collectionName)

Empty Collection

Empty a collection.  Removes all documents and their associated vector data from a specified collection, but keeps the collection\&#39;s configuration.  Args:     collection_name: The name of the collection to empty.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { EmptyCollectionRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies EmptyCollectionRequest;

  try {
    const data = await api.emptyCollection(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCollectionConfig

> CollectionConfig getCollectionConfig(collectionName)

Get Collection Config

Get collection configuration.  Retrieves the configuration details for a specific collection.  Args:     collection_name: The name of the collection.  Returns:     The configuration of the specified collection.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { GetCollectionConfigRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies GetCollectionConfigRequest;

  try {
    const data = await api.getCollectionConfig(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**CollectionConfig**](CollectionConfig.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCollectionQueueInfo

> QueueInfo getCollectionQueueInfo(collectionName)

Get Collection Queue Info

Get queue statistics for a collection.  Retrieves counts of documents in different queue states (queued, requeued, failed).  Args:     collection_name: The name of the collection.  Returns:     A &#x60;QueueInfo&#x60; object with counts for each queue state.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { GetCollectionQueueInfoRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies GetCollectionQueueInfoRequest;

  try {
    const data = await api.getCollectionQueueInfo(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**QueueInfo**](QueueInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getCollectionStats

> CollectionStatsResponse getCollectionStats(collectionName)

Get Collection Stats

Get persisted collection statistics and queue counts.  Returns document counts maintained by the indexing pipeline (not a live physical count), plus queue entry counts by state (same data as &#x60;&#x60;GET .../queue/info&#x60;&#x60;).  Args:     collection_name: The name of the collection.  Returns:     A &#x60;CollectionStatsResponse&#x60; with &#x60;doc_count&#x60; and &#x60;queue&#x60;.  Raises:     HTTPException: 404 if the collection does not exist.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { GetCollectionStatsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
  } satisfies GetCollectionStatsRequest;

  try {
    const data = await api.getCollectionStats(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |

### Return type

[**CollectionStatsResponse**](CollectionStatsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getDocument

> Document getDocument(collectionName, documentId)

Get Document

Retrieve a single document.  Retrieves a specific document by its ID from the specified collection.  Args:     collection_name: The name of the collection.     document_id: The unique identifier of the document to retrieve.  Returns:     The retrieved &#x60;Document&#x60; object.  Raises:     HTTPException: 404 if the document is not found in the collection.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { GetDocumentRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // string
    documentId: documentId_example,
  } satisfies GetDocumentRequest;

  try {
    const data = await api.getDocument(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **documentId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**Document**](Document.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getDocumentStatus

> DocumentStatusResponse getDocumentStatus(collectionName, documentId)

Get Document Status

Get document processing status.  Retrieves the processing status of a document, including its current state in the queue and any associated messages.  Args:     collection_name: The name of the collection.     document_id: The unique identifier of the document.  Returns:     A &#x60;DocumentStatusResponse&#x60; object containing the processing status of the document.  Raises:     HTTPException: 404 if the document is not found in the collection\&#39;s queue.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { GetDocumentStatusRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // string
    documentId: documentId_example,
  } satisfies GetDocumentStatusRequest;

  try {
    const data = await api.getDocumentStatus(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **documentId** | `string` |  | [Defaults to `undefined`] |

### Return type

[**DocumentStatusResponse**](DocumentStatusResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## healthCheck

> OkResponse healthCheck()

Health

Check API service responsiveness.  This endpoint returns a simple \&#39;ok\&#39; status to indicate that the API service is running and able to respond to requests.  Returns:     An &#x60;OkResponse&#x60; object with the \&#39;ok\&#39; field set to True, confirming the service\&#39;s responsiveness.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { HealthCheckRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.healthCheck();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## healthReady

> ReadyResponse healthReady()

Readiness Check

Check if service is ready to handle requests.  Runs four probes: database, rabbitmq, index workers, query workers. Returns 200 if all pass (fully ready), 218 if some fail (partial ready). Response body always includes all four probe results and a ready flag.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { HealthReadyRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.healthReady();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ReadyResponse**](ReadyResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Fully ready |  -  |
| **218** | Partial ready (some index/query probes not ready) |  -  |
| **503** | Service Unavailable (infra down or all encoder roles down) |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## listCollections

> Array&lt;string&gt; listCollections()

List Collections

List all available collections.  Retrieves a list of all collections managed by the application.  Returns:     A list of strings, where each string is the name of an available collection.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { ListCollectionsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.listCollections();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Array<string>**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## metricsCurrent

> Metrics metricsCurrent(window, keys)

Metrics Current

Return the current metrics state for all nodes over the given window (seconds).

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { MetricsCurrentRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // number | Aggregation window in seconds - 30 or 60. (optional)
    window: 56,
    // Array<string> | Restrict returned metric series to these keys. Omit for all keys. (optional)
    keys: ...,
  } satisfies MetricsCurrentRequest;

  try {
    const data = await api.metricsCurrent(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **window** | `number` | Aggregation window in seconds - 30 or 60. | [Optional] [Defaults to `60`] |
| **keys** | `Array<string>` | Restrict returned metric series to these keys. Omit for all keys. | [Optional] |

### Return type

[**Metrics**](Metrics.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## metricsDefinitions

> Array&lt;MetricDefinitionItem&gt; metricsDefinitions()

Metrics Definitions

Return catalog entries for all known metric keys, their units, and descriptions.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { MetricsDefinitionsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.metricsDefinitions();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;MetricDefinitionItem&gt;**](MetricDefinitionItem.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## metricsPrometheus

> string metricsPrometheus()

Metrics Prometheus

Expose current cluster metrics in Prometheus text exposition (60s rolling window).

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { MetricsPrometheusRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.metricsPrometheus();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `text/plain`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## metricsTrends

> Array&lt;MetricTrend&gt; metricsTrends(since, until, resolution, keys)

Metrics Trends

Return historical metric buckets for the given time range and resolution.  Args:     since: Inclusive start of the time range (ISO 8601, UTC assumed if no timezone given).     until: Exclusive end of the time range (ISO 8601, UTC assumed if no timezone given).     resolution: Bucket size in seconds - 60 for 1-minute, 300 for 5-minute.     keys: One or more metric keys to return. Omit to return all keys.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { MetricsTrendsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // Date
    since: 2013-10-20T19:20:30+01:00,
    // Date
    until: 2013-10-20T19:20:30+01:00,
    // number | Bucket size in seconds - 60 for 1-minute, 300 for 5-minute. (optional)
    resolution: 56,
    // Array<string> (optional)
    keys: ...,
  } satisfies MetricsTrendsRequest;

  try {
    const data = await api.metricsTrends(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **since** | `Date` |  | [Defaults to `undefined`] |
| **until** | `Date` |  | [Defaults to `undefined`] |
| **resolution** | `number` | Bucket size in seconds - 60 for 1-minute, 300 for 5-minute. | [Optional] [Defaults to `60`] |
| **keys** | `Array<string>` |  | [Optional] |

### Return type

[**Array&lt;MetricTrend&gt;**](MetricTrend.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## search

> Array&lt;SearchResult&gt; search(collectionName, searchQuery)

Search

Perform a search query on a collection.  Executes a search query against the specified collection.  Args:     collection_name: The name of the collection to search.     query: The &#x60;SearchQuery&#x60; object containing the search text, filters, and other parameters.  Returns:     A list of &#x60;SearchResult&#x60; objects, where each object represents a search result.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { SearchRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // SearchQuery
    searchQuery: ...,
  } satisfies SearchRequest;

  try {
    const data = await api.search(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **searchQuery** | [SearchQuery](SearchQuery.md) |  | |

### Return type

[**Array&lt;SearchResult&gt;**](SearchResult.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## systemInfo

> SystemInfoResponse systemInfo()

System Info

Summarize deployment and infrastructure (no connection URLs).

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { SystemInfoRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.systemInfo();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SystemInfoResponse**](SystemInfoResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## upsertDocument

> OkResponse upsertDocument(collectionName, document)

Upsert Document

Upsert a single document asynchronously.  Adds or updates a single document in the specified collection by placing it into a processing queue. The document will be vectorized and indexed asynchronously.  Args:     collection_name: The name of the collection to upsert the document into.     document: The document object to be upserted.  Returns:     An &#x60;OkResponse&#x60; object indicating that the document has been accepted for processing.  Raises:     HTTPException: 500 if publishing the event to the internal queue fails.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { UpsertDocumentRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // Document
    document: ...,
  } satisfies UpsertDocumentRequest;

  try {
    const data = await api.upsertDocument(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **document** | [Document](Document.md) |  | |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## upsertDocumentSync

> OkResponse upsertDocumentSync(collectionName, document)

Upsert Document Sync

Upsert a single document synchronously.  Adds or updates a single document in the specified collection and waits for the operation to complete, including vectorization and indexing.  Args:     collection_name: The name of the collection to upsert the document into.     document: The document object to be upserted.  Returns:     An &#x60;OkResponse&#x60; object indicating the success of the operation.  Raises:     HTTPException:         - 409 if a document with the same ID and newer timestamp already exists (conflict).         - 500 for other internal server errors during processing.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { UpsertDocumentSyncRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // Document
    document: ...,
  } satisfies UpsertDocumentSyncRequest;

  try {
    const data = await api.upsertDocumentSync(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **document** | [Document](Document.md) |  | |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## upsertDocumentsBulk

> OkResponse upsertDocumentsBulk(collectionName, bulkUploadRequest)

Upsert Documents Bulk

Upsert multiple documents in bulk asynchronously.  Adds or updates multiple documents in the specified collection by placing them into a processing queue. Documents will be vectorized and indexed asynchronously. This method is optimized for bulk operations.  Args:     collection_name: The name of the collection to upsert the documents into.     request: A &#x60;BulkUploadRequest&#x60; object containing a list of &#x60;Document&#x60; objects to be upserted.  Returns:     An &#x60;OkResponse&#x60; object indicating that the documents have been accepted for processing.  Raises:     HTTPException: 500 if publishing events to the internal queue fails for any document.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { UpsertDocumentsBulkRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  const body = {
    // string | Collection name (alphanumeric, underscores, hyphens only)
    collectionName: collectionName_example,
    // BulkUploadRequest
    bulkUploadRequest: ...,
  } satisfies UpsertDocumentsBulkRequest;

  try {
    const data = await api.upsertDocumentsBulk(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **collectionName** | `string` | Collection name (alphanumeric, underscores, hyphens only) | [Defaults to `undefined`] |
| **bulkUploadRequest** | [BulkUploadRequest](BulkUploadRequest.md) |  | |

### Return type

[**OkResponse**](OkResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## version

> VersionResponse version()

Version

Return the system version.  Returns:     A &#x60;VersionResponse&#x60; object with the system version.

### Example

```ts
import {
  Configuration,
  AmgixApi,
} from '';
import type { VersionRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new AmgixApi();

  try {
    const data = await api.version();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**VersionResponse**](VersionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

