# WorkspaceService

A list of all methods in the `WorkspaceService` service. Click on the method name to view detailed information about that method.

| Methods                                                                     | Description                                                                                 |
| :-------------------------------------------------------------------------- | :------------------------------------------------------------------------------------------ |
| [experimental_workspace_adapter_list](#experimental_workspace_adapter_list) | List all available workspace adapters for the current project.                              |
| [experimental_workspace_list](#experimental_workspace_list)                 | List all workspaces.                                                                        |
| [experimental_workspace_create](#experimental_workspace_create)             | Create a workspace for the current project.                                                 |
| [experimental_workspace_sync_list](#experimental_workspace_sync_list)       | Register missing workspaces returned by workspace adapters.                                 |
| [experimental_workspace_status](#experimental_workspace_status)             | Get connection status for workspaces in the current project.                                |
| [experimental_workspace_remove](#experimental_workspace_remove)             | Remove an existing workspace.                                                               |
| [experimental_workspace_warp](#experimental_workspace_warp)                 | Move a session's sync history into the target workspace, or detach it to the local project. |

## experimental_workspace_adapter_list

List all available workspace adapters for the current project.

- HTTP Method: `GET`
- Endpoint: `/experimental/workspace/adapter`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[ExperimentalWorkspaceAdapterListOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.workspace.experimental_workspace_adapter_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_list

List all workspaces.

- HTTP Method: `GET`
- Endpoint: `/experimental/workspace`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[Workspace]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.workspace.experimental_workspace_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_create

Create a workspace for the current project.

- HTTP Method: `POST`
- Endpoint: `/experimental/workspace`

**Parameters**

| Name         | Type                                                                                  | Required | Description       |
| :----------- | :------------------------------------------------------------------------------------ | :------- | :---------------- |
| request_body | [ExperimentalWorkspaceCreateRequest](../models/ExperimentalWorkspaceCreateRequest.md) | ❌       | The request body. |
| directory    | str                                                                                   | ❌       |                   |
| workspace    | str                                                                                   | ❌       |                   |

**Return Type**

`Workspace`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import ExperimentalWorkspaceCreateRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ExperimentalWorkspaceCreateRequest(
    id_="wrk",
    type_="type",
    branch="branch",
    extra=""
)

result = sdk.workspace.experimental_workspace_create(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_sync_list

Register missing workspaces returned by workspace adapters.

- HTTP Method: `POST`
- Endpoint: `/experimental/workspace/sync-list`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.workspace.experimental_workspace_sync_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_status

Get connection status for workspaces in the current project.

- HTTP Method: `GET`
- Endpoint: `/experimental/workspace/status`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[ExperimentalWorkspaceStatusOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.workspace.experimental_workspace_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_remove

Remove an existing workspace.

- HTTP Method: `DELETE`
- Endpoint: `/experimental/workspace/{id}`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| id\_      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`Workspace`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.workspace.experimental_workspace_remove(
    id_="wrk",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_workspace_warp

Move a session's sync history into the target workspace, or detach it to the local project.

- HTTP Method: `POST`
- Endpoint: `/experimental/workspace/warp`

**Parameters**

| Name         | Type                                                                              | Required | Description       |
| :----------- | :-------------------------------------------------------------------------------- | :------- | :---------------- |
| request_body | [ExperimentalWorkspaceWarpRequest](../models/ExperimentalWorkspaceWarpRequest.md) | ❌       | The request body. |
| directory    | str                                                                               | ❌       |                   |
| workspace    | str                                                                               | ❌       |                   |

**Return Type**

`ExperimentalWorkspaceWarpBadRequestResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import ExperimentalWorkspaceWarpRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ExperimentalWorkspaceWarpRequest(
    id_="wrk",
    session_id="sessionID",
    copy_changes=False
)

result = sdk.workspace.experimental_workspace_warp(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
