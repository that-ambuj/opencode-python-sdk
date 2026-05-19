# V2Service

A list of all methods in the `V2Service` service. Click on the method name to view detailed information about that method.

| Methods                                   | Description                                                                                                                                        |
| :---------------------------------------- | :------------------------------------------------------------------------------------------------------------------------------------------------- |
| [v2_session_list](#v2_session_list)       | Retrieve sessions in the requested order. Items keep that order across pages; use cursor.next or cursor.previous to move through the ordered list. |
| [v2_session_prompt](#v2_session_prompt)   | Create a v2 session message and queue it for the agent loop.                                                                                       |
| [v2_session_compact](#v2_session_compact) | Compact a v2 session conversation.                                                                                                                 |
| [v2_session_wait](#v2_session_wait)       | Wait for a v2 session agent loop to become idle.                                                                                                   |
| [v2_session_context](#v2_session_context) | Retrieve the active context messages for a v2 session (all messages after the last compaction).                                                    |

## v2_session_list

Retrieve sessions in the requested order. Items keep that order across pages; use cursor.next or cursor.previous to move through the ordered list.

- HTTP Method: `GET`
- Endpoint: `/api/session`

**Parameters**

| Name      | Type                                                  | Required | Description                                                                                                                         |
| :-------- | :---------------------------------------------------- | :------- | :---------------------------------------------------------------------------------------------------------------------------------- |
| directory | str                                                   | ❌       |                                                                                                                                     |
| workspace | str                                                   | ❌       |                                                                                                                                     |
| limit     | float                                                 | ❌       |                                                                                                                                     |
| order     | [V2SessionListOrder](../models/V2SessionListOrder.md) | ❌       |                                                                                                                                     |
| path      | str                                                   | ❌       |                                                                                                                                     |
| roots     | [V2SessionListRoots](../models/V2SessionListRoots.md) | ❌       |                                                                                                                                     |
| start     | float                                                 | ❌       |                                                                                                                                     |
| search    | str                                                   | ❌       |                                                                                                                                     |
| cursor    | str                                                   | ❌       | Opaque pagination cursor returned as cursor.previous or cursor.next in the previous response. Do not combine with order or filters. |

**Return Type**

`V2SessionsResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import V2SessionListOrder

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)
roots=False

result = sdk.v2.v2_session_list(
    directory="directory",
    workspace="workspace",
    limit=2.95,
    order="asc",
    path="path",
    roots=roots,
    start=3.25,
    search="search",
    cursor="cursor"
)

print(result)
```

## v2_session_prompt

Create a v2 session message and queue it for the agent loop.

- HTTP Method: `POST`
- Endpoint: `/api/session/{sessionID}/prompt`

**Parameters**

| Name         | Type                                                          | Required | Description       |
| :----------- | :------------------------------------------------------------ | :------- | :---------------- |
| request_body | [V2SessionPromptRequest](../models/V2SessionPromptRequest.md) | ❌       | The request body. |
| session_id   | str                                                           | ✅       |                   |
| directory    | str                                                           | ❌       |                   |
| workspace    | str                                                           | ❌       |                   |

**Return Type**

`SessionMessage`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import V2SessionPromptRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = V2SessionPromptRequest(
    prompt={
        "text": "text",
        "files": [
            {
                "uri": "uri",
                "mime": "mime",
                "name": "name",
                "description": "description",
                "source": {
                    "start": 9.52,
                    "end": 8.36,
                    "text": "text"
                }
            }
        ],
        "agents": [
            {
                "name": "name",
                "source": {
                    "start": 9.52,
                    "end": 8.36,
                    "text": "text"
                }
            }
        ],
        "references": [
            {
                "name": "name",
                "kind": "local",
                "uri": "uri",
                "repository": "repository",
                "branch": "branch",
                "target": "target",
                "target_uri": "targetUri",
                "problem": "problem",
                "source": {
                    "start": 9.52,
                    "end": 8.36,
                    "text": "text"
                }
            }
        ]
    },
    delivery="immediate"
)

result = sdk.v2.v2_session_prompt(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## v2_session_compact

Compact a v2 session conversation.

- HTTP Method: `POST`
- Endpoint: `/api/session/{sessionID}/compact`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.v2.v2_session_compact(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## v2_session_wait

Wait for a v2 session agent loop to become idle.

- HTTP Method: `POST`
- Endpoint: `/api/session/{sessionID}/wait`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.v2.v2_session_wait(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## v2_session_context

Retrieve the active context messages for a v2 session (all messages after the last compaction).

- HTTP Method: `GET`
- Endpoint: `/api/session/{sessionID}/context`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`List[SessionMessage]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.v2.v2_session_context(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
