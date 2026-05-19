# SyncService

A list of all methods in the `SyncService` service. Click on the method name to view detailed information about that method.

| Methods                                 | Description                                                                                                                                                                                                                                               |
| :-------------------------------------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [sync_start](#sync_start)               | Start sync loops for workspaces in the current project that have active sessions.                                                                                                                                                                         |
| [sync_replay](#sync_replay)             | Validate and replay a complete sync event history.                                                                                                                                                                                                        |
| [sync_steal](#sync_steal)               | Update a session to belong to the current workspace through the sync event system.                                                                                                                                                                        |
| [sync_history_list](#sync_history_list) | List sync events for all aggregates. Keys are aggregate IDs the client already knows about, values are the last known sequence ID. Events with seq \> value are returned for those aggregates. Aggregates not listed in the input get their full history. |

## sync_start

Start sync loops for workspaces in the current project that have active sessions.

- HTTP Method: `POST`
- Endpoint: `/sync/start`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.sync.sync_start(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## sync_replay

Validate and replay a complete sync event history.

- HTTP Method: `POST`
- Endpoint: `/sync/replay`

**Parameters**

| Name         | Type                                                | Required | Description       |
| :----------- | :-------------------------------------------------- | :------- | :---------------- |
| request_body | [SyncReplayRequest](../models/SyncReplayRequest.md) | ❌       | The request body. |
| directory    | str                                                 | ❌       |                   |
| workspace    | str                                                 | ❌       |                   |

**Return Type**

`SyncReplayOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SyncReplayRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SyncReplayRequest(
    directory="directory",
    events=[
        {
            "id_": "id",
            "aggregate_id": "aggregateID",
            "seq": 7,
            "type_": "type",
            "data": {}
        }
    ]
)

result = sdk.sync.sync_replay(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## sync_steal

Update a session to belong to the current workspace through the sync event system.

- HTTP Method: `POST`
- Endpoint: `/sync/steal`

**Parameters**

| Name         | Type                                              | Required | Description       |
| :----------- | :------------------------------------------------ | :------- | :---------------- |
| request_body | [SyncStealRequest](../models/SyncStealRequest.md) | ❌       | The request body. |
| directory    | str                                               | ❌       |                   |
| workspace    | str                                               | ❌       |                   |

**Return Type**

`SyncStealOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SyncStealRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SyncStealRequest(
    session_id="sessionID"
)

result = sdk.sync.sync_steal(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## sync_history_list

List sync events for all aggregates. Keys are aggregate IDs the client already knows about, values are the last known sequence ID. Events with seq \> value are returned for those aggregates. Aggregates not listed in the input get their full history.

- HTTP Method: `POST`
- Endpoint: `/sync/history`

**Parameters**

| Name         | Type | Required | Description       |
| :----------- | :--- | :------- | :---------------- |
| request_body | dict | ❌       | The request body. |
| directory    | str  | ❌       |                   |
| workspace    | str  | ❌       |                   |

**Return Type**

`List[SyncHistoryListOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import dict

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = {}

result = sdk.sync.sync_history_list(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
