# SessionService

A list of all methods in the `SessionService` service. Click on the method name to view detailed information about that method.

| Methods                                           | Description                                                                                                          |
| :------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------- |
| [session_list](#session_list)                     | Get a list of all OpenCode sessions, sorted by most recently updated.                                                |
| [session_create](#session_create)                 | Create a new OpenCode session for interacting with AI assistants and managing conversations.                         |
| [session_status](#session_status)                 | Retrieve the current status of all sessions, including active, idle, and completed states.                           |
| [session_get](#session_get)                       | Retrieve detailed information about a specific OpenCode session.                                                     |
| [session_update](#session_update)                 | Update properties of an existing session, such as title or other metadata.                                           |
| [session_delete](#session_delete)                 | Delete a session and permanently remove all associated data, including messages and history.                         |
| [session_children](#session_children)             | Retrieve all child sessions that were forked from the specified parent session.                                      |
| [session_todo](#session_todo)                     | Retrieve the todo list associated with a specific session, showing tasks and action items.                           |
| [session_diff](#session_diff)                     | Get the file changes (diff) that resulted from a specific user message in the session.                               |
| [session_messages](#session_messages)             | Retrieve all messages in a session, including user prompts and AI responses.                                         |
| [session_prompt](#session_prompt)                 | Create and send a new message to a session, streaming the AI response.                                               |
| [session_message](#session_message)               | Retrieve a specific message from a session by its message ID.                                                        |
| [session_delete_message](#session_delete_message) | Permanently delete a specific message and all of its parts from a session without reverting file changes.            |
| [session_fork](#session_fork)                     | Create a new session by forking an existing session at a specific message point.                                     |
| [session_abort](#session_abort)                   | Abort an active session and stop any ongoing AI processing or command execution.                                     |
| [session_init](#session_init)                     | Analyze the current application and create an AGENTS.md file with project-specific agent configurations.             |
| [session_share](#session_share)                   | Create a shareable link for a session, allowing others to view the conversation.                                     |
| [session_unshare](#session_unshare)               | Remove the shareable link for a session, making it private again.                                                    |
| [session_summarize](#session_summarize)           | Generate a concise summary of the session using AI compaction to preserve key information.                           |
| [session_prompt_async](#session_prompt_async)     | Create and send a new message to a session asynchronously, starting the session if needed and returning immediately. |
| [session_command](#session_command)               | Send a new command to a session for execution by the AI assistant.                                                   |
| [session_shell](#session_shell)                   | Execute a shell command within the session context and return the AI's response.                                     |
| [session_revert](#session_revert)                 | Revert a specific message in a session, undoing its effects and restoring the previous state.                        |
| [session_unrevert](#session_unrevert)             | Restore all previously reverted messages in a session.                                                               |
| [permission_respond](#permission_respond)         | Approve or deny a permission request from the AI assistant.                                                          |
| [part_update](#part_update)                       | Update a part in a message.                                                                                          |
| [part_delete](#part_delete)                       | Delete a part from a message.                                                                                        |

## session_list

Get a list of all OpenCode sessions, sorted by most recently updated.

- HTTP Method: `GET`
- Endpoint: `/session`

**Parameters**

| Name      | Type                                              | Required | Description |
| :-------- | :------------------------------------------------ | :------- | :---------- |
| directory | str                                               | ❌       |             |
| workspace | str                                               | ❌       |             |
| scope     | [Scope](../models/Scope.md)                       | ❌       |             |
| path      | str                                               | ❌       |             |
| roots     | [SessionListRoots](../models/SessionListRoots.md) | ❌       |             |
| start     | float                                             | ❌       |             |
| search    | str                                               | ❌       |             |
| limit     | float                                             | ❌       |             |

**Return Type**

`List[Session]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import Scope

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)
roots=True

result = sdk.session.session_list(
    directory="directory",
    workspace="workspace",
    scope="project",
    path="path",
    roots=roots,
    start=2.52,
    search="search",
    limit=7.23
)

print(result)
```

## session_create

Create a new OpenCode session for interacting with AI assistants and managing conversations.

- HTTP Method: `POST`
- Endpoint: `/session`

**Parameters**

| Name         | Type                                                      | Required | Description       |
| :----------- | :-------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionCreateRequest](../models/SessionCreateRequest.md) | ❌       | The request body. |
| directory    | str                                                       | ❌       |                   |
| workspace    | str                                                       | ❌       |                   |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionCreateRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionCreateRequest(
    parent_id="ses",
    title="title",
    agent="agent",
    model={
        "id_": "id",
        "provider_id": "providerID",
        "variant": "variant"
    },
    permission=[
        {
            "permission": "permission",
            "pattern": "pattern",
            "action": "allow"
        }
    ],
    workspace_id="wrk"
)

result = sdk.session.session_create(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_status

Retrieve the current status of all sessions, including active, idle, and completed states.

- HTTP Method: `GET`
- Endpoint: `/session/status`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`dict`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_get

Retrieve detailed information about a specific OpenCode session.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_get(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_update

Update properties of an existing session, such as title or other metadata.

- HTTP Method: `PATCH`
- Endpoint: `/session/{sessionID}`

**Parameters**

| Name         | Type                                                      | Required | Description       |
| :----------- | :-------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionUpdateRequest](../models/SessionUpdateRequest.md) | ❌       | The request body. |
| session_id   | str                                                       | ✅       |                   |
| directory    | str                                                       | ❌       |                   |
| workspace    | str                                                       | ❌       |                   |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionUpdateRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionUpdateRequest(
    title="title",
    permission=[
        {
            "permission": "permission",
            "pattern": "pattern",
            "action": "allow"
        }
    ],
    time={
        "archived": 7.64
    }
)

result = sdk.session.session_update(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_delete

Delete a session and permanently remove all associated data, including messages and history.

- HTTP Method: `DELETE`
- Endpoint: `/session/{sessionID}`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_delete(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_children

Retrieve all child sessions that were forked from the specified parent session.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}/children`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`List[Session]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_children(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_todo

Retrieve the todo list associated with a specific session, showing tasks and action items.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}/todo`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`List[Todo]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_todo(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_diff

Get the file changes (diff) that resulted from a specific user message in the session.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}/diff`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |
| message_id | str  | ❌       |             |

**Return Type**

`List[SnapshotFileDiff]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_diff(
    session_id="sessionID",
    directory="directory",
    workspace="workspace",
    message_id="msg"
)

print(result)
```

## session_messages

Retrieve all messages in a session, including user prompts and AI responses.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}/message`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |
| limit      | int  | ❌       |             |
| before     | str  | ❌       |             |

**Return Type**

`List[SessionMessagesOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_messages(
    session_id="sessionID",
    directory="directory",
    workspace="workspace",
    limit=4184958727349802,
    before="before"
)

print(result)
```

## session_prompt

Create and send a new message to a session, streaming the AI response.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/message`

**Parameters**

| Name         | Type                                                      | Required | Description       |
| :----------- | :-------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionPromptRequest](../models/SessionPromptRequest.md) | ❌       | The request body. |
| session_id   | str                                                       | ✅       |                   |
| directory    | str                                                       | ❌       |                   |
| workspace    | str                                                       | ❌       |                   |

**Return Type**

`SessionPromptOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionPromptRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionPromptRequest(
    message_id="msg",
    model={
        "provider_id": "providerID",
        "model_id": "modelID"
    },
    agent="agent",
    no_reply=False,
    tools={},
    format={
        "type_": "text"
    },
    system="system",
    variant="variant",
    parts=[
        {
            "id_": "prt",
            "type_": "text",
            "text": "text",
            "synthetic": True,
            "ignored": False,
            "time": {
                "start": 5,
                "end": 0
            },
            "metadata": {}
        }
    ]
)

result = sdk.session.session_prompt(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_message

Retrieve a specific message from a session by its message ID.

- HTTP Method: `GET`
- Endpoint: `/session/{sessionID}/message/{messageID}`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| message_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`SessionMessageOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_message(
    session_id="sessionID",
    message_id="msg",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_delete_message

Permanently delete a specific message and all of its parts from a session without reverting file changes.

- HTTP Method: `DELETE`
- Endpoint: `/session/{sessionID}/message/{messageID}`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| message_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_delete_message(
    session_id="sessionID",
    message_id="msg",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_fork

Create a new session by forking an existing session at a specific message point.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/fork`

**Parameters**

| Name         | Type                                                  | Required | Description       |
| :----------- | :---------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionForkRequest](../models/SessionForkRequest.md) | ❌       | The request body. |
| session_id   | str                                                   | ✅       |                   |
| directory    | str                                                   | ❌       |                   |
| workspace    | str                                                   | ❌       |                   |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionForkRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionForkRequest(
    message_id="msg"
)

result = sdk.session.session_fork(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_abort

Abort an active session and stop any ongoing AI processing or command execution.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/abort`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_abort(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_init

Analyze the current application and create an AGENTS.md file with project-specific agent configurations.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/init`

**Parameters**

| Name         | Type                                                  | Required | Description       |
| :----------- | :---------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionInitRequest](../models/SessionInitRequest.md) | ❌       | The request body. |
| session_id   | str                                                   | ✅       |                   |
| directory    | str                                                   | ❌       |                   |
| workspace    | str                                                   | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionInitRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionInitRequest(
    model_id="modelID",
    provider_id="providerID",
    message_id="msg"
)

result = sdk.session.session_init(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_share

Create a shareable link for a session, allowing others to view the conversation.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/share`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_share(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_unshare

Remove the shareable link for a session, making it private again.

- HTTP Method: `DELETE`
- Endpoint: `/session/{sessionID}/share`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_unshare(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_summarize

Generate a concise summary of the session using AI compaction to preserve key information.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/summarize`

**Parameters**

| Name         | Type                                                            | Required | Description       |
| :----------- | :-------------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionSummarizeRequest](../models/SessionSummarizeRequest.md) | ❌       | The request body. |
| session_id   | str                                                             | ✅       |                   |
| directory    | str                                                             | ❌       |                   |
| workspace    | str                                                             | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionSummarizeRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionSummarizeRequest(
    provider_id="providerID",
    model_id="modelID",
    auto=False
)

result = sdk.session.session_summarize(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_prompt_async

Create and send a new message to a session asynchronously, starting the session if needed and returning immediately.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/prompt_async`

**Parameters**

| Name         | Type                                                                | Required | Description       |
| :----------- | :------------------------------------------------------------------ | :------- | :---------------- |
| request_body | [SessionPromptAsyncRequest](../models/SessionPromptAsyncRequest.md) | ❌       | The request body. |
| session_id   | str                                                                 | ✅       |                   |
| directory    | str                                                                 | ❌       |                   |
| workspace    | str                                                                 | ❌       |                   |

**Return Type**

`BadRequestError`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionPromptAsyncRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionPromptAsyncRequest(
    message_id="msg",
    model={
        "provider_id": "providerID",
        "model_id": "modelID"
    },
    agent="agent",
    no_reply=True,
    tools={},
    format={
        "type_": "text"
    },
    system="system",
    variant="variant",
    parts=[
        {
            "id_": "prt",
            "type_": "text",
            "text": "text",
            "synthetic": True,
            "ignored": False,
            "time": {
                "start": 5,
                "end": 0
            },
            "metadata": {}
        }
    ]
)

result = sdk.session.session_prompt_async(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_command

Send a new command to a session for execution by the AI assistant.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/command`

**Parameters**

| Name         | Type                                                        | Required | Description       |
| :----------- | :---------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionCommandRequest](../models/SessionCommandRequest.md) | ❌       | The request body. |
| session_id   | str                                                         | ✅       |                   |
| directory    | str                                                         | ❌       |                   |
| workspace    | str                                                         | ❌       |                   |

**Return Type**

`SessionCommandOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionCommandRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionCommandRequest(
    message_id="msg",
    agent="agent",
    model="model",
    arguments="arguments",
    command="command",
    variant="variant",
    parts=[
        {
            "id_": "prt",
            "type_": "file",
            "mime": "mime",
            "filename": "filename",
            "url": "url",
            "source": {
                "text": {
                    "value": "value",
                    "start": 2.27,
                    "end": 4.71
                },
                "type_": "file",
                "path": "path"
            }
        }
    ]
)

result = sdk.session.session_command(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_shell

Execute a shell command within the session context and return the AI's response.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/shell`

**Parameters**

| Name         | Type                                                    | Required | Description       |
| :----------- | :------------------------------------------------------ | :------- | :---------------- |
| request_body | [SessionShellRequest](../models/SessionShellRequest.md) | ❌       | The request body. |
| session_id   | str                                                     | ✅       |                   |
| directory    | str                                                     | ❌       |                   |
| workspace    | str                                                     | ❌       |                   |

**Return Type**

`SessionShellOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionShellRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionShellRequest(
    message_id="msg",
    agent="agent",
    model={
        "provider_id": "providerID",
        "model_id": "modelID"
    },
    command="command"
)

result = sdk.session.session_shell(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_revert

Revert a specific message in a session, undoing its effects and restoring the previous state.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/revert`

**Parameters**

| Name         | Type                                                      | Required | Description       |
| :----------- | :-------------------------------------------------------- | :------- | :---------------- |
| request_body | [SessionRevertRequest](../models/SessionRevertRequest.md) | ❌       | The request body. |
| session_id   | str                                                       | ✅       |                   |
| directory    | str                                                       | ❌       |                   |
| workspace    | str                                                       | ❌       |                   |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import SessionRevertRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = SessionRevertRequest(
    message_id="msg",
    part_id="prt"
)

result = sdk.session.session_revert(
    request_body=request_body,
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## session_unrevert

Restore all previously reverted messages in a session.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/unrevert`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`Session`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.session_unrevert(
    session_id="sessionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## permission_respond

Approve or deny a permission request from the AI assistant.

- HTTP Method: `POST`
- Endpoint: `/session/{sessionID}/permissions/{permissionID}`

**Parameters**

| Name          | Type                                                              | Required | Description       |
| :------------ | :---------------------------------------------------------------- | :------- | :---------------- |
| request_body  | [PermissionRespondRequest](../models/PermissionRespondRequest.md) | ❌       | The request body. |
| session_id    | str                                                               | ✅       |                   |
| permission_id | str                                                               | ✅       |                   |
| directory     | str                                                               | ❌       |                   |
| workspace     | str                                                               | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import PermissionRespondRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = PermissionRespondRequest(
    response="once"
)

result = sdk.session.permission_respond(
    request_body=request_body,
    session_id="sessionID",
    permission_id="permissionID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## part_update

Update a part in a message.

- HTTP Method: `PATCH`
- Endpoint: `/session/{sessionID}/message/{messageID}/part/{partID}`

**Parameters**

| Name         | Type                      | Required | Description       |
| :----------- | :------------------------ | :------- | :---------------- |
| request_body | [Part](../models/Part.md) | ❌       | The request body. |
| session_id   | str                       | ✅       |                   |
| message_id   | str                       | ✅       |                   |
| part_id      | str                       | ✅       |                   |
| directory    | str                       | ❌       |                   |
| workspace    | str                       | ❌       |                   |

**Return Type**

`Part`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models.part import TextPart

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TextPart(
    id_="prt",
    session_id="sessionID",
    message_id="msg",
    type_="text",
    text="text",
    synthetic=True,
    ignored=False,
    time={
        "start": 10,
        "end": 1
    },
    metadata={}
)

result = sdk.session.part_update(
    request_body=request_body,
    session_id="sessionID",
    message_id="msg",
    part_id="prt",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## part_delete

Delete a part from a message.

- HTTP Method: `DELETE`
- Endpoint: `/session/{sessionID}/message/{messageID}/part/{partID}`

**Parameters**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| message_id | str  | ✅       |             |
| part_id    | str  | ✅       |             |
| directory  | str  | ❌       |             |
| workspace  | str  | ❌       |             |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.session.part_delete(
    session_id="sessionID",
    message_id="msg",
    part_id="prt",
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
