# ExperimentalService

A list of all methods in the `ExperimentalService` service. Click on the method name to view detailed information about that method.

| Methods                                                             | Description                                                                                                                      |
| :------------------------------------------------------------------ | :------------------------------------------------------------------------------------------------------------------------------- |
| [experimental_console_get](#experimental_console_get)               | Get the active Console org name and the set of provider IDs managed by that Console org.                                         |
| [experimental_console_list_orgs](#experimental_console_list_orgs)   | Get the available Console orgs across logged-in accounts, including the current active org.                                      |
| [experimental_console_switch_org](#experimental_console_switch_org) | Persist a new active Console account/org selection for the current local OpenCode state.                                         |
| [tool_list](#tool_list)                                             | Get a list of available tools with their JSON schema parameters for a specific provider and model combination.                   |
| [tool_ids](#tool_ids)                                               | Get a list of all available tool IDs, including both built-in tools and dynamically registered tools.                            |
| [worktree_list](#worktree_list)                                     | List all sandbox worktrees for the current project.                                                                              |
| [worktree_create](#worktree_create)                                 | Create a new git worktree for the current project and run any configured startup scripts.                                        |
| [worktree_remove](#worktree_remove)                                 | Remove a git worktree and delete its branch.                                                                                     |
| [worktree_reset](#worktree_reset)                                   | Reset a worktree branch to the primary default branch.                                                                           |
| [experimental_session_list](#experimental_session_list)             | Get a list of all OpenCode sessions across projects, sorted by most recently updated. Archived sessions are excluded by default. |
| [experimental_resource_list](#experimental_resource_list)           | Get all available MCP resources from connected servers. Optionally filter by name.                                               |

## experimental_console_get

Get the active Console org name and the set of provider IDs managed by that Console org.

- HTTP Method: `GET`
- Endpoint: `/experimental/console`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`ConsoleState`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.experimental.experimental_console_get(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_console_list_orgs

Get the available Console orgs across logged-in accounts, including the current active org.

- HTTP Method: `GET`
- Endpoint: `/experimental/console/orgs`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`ExperimentalConsoleListOrgsOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.experimental.experimental_console_list_orgs(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_console_switch_org

Persist a new active Console account/org selection for the current local OpenCode state.

- HTTP Method: `POST`
- Endpoint: `/experimental/console/switch`

**Parameters**

| Name         | Type                                                                                    | Required | Description       |
| :----------- | :-------------------------------------------------------------------------------------- | :------- | :---------------- |
| request_body | [ExperimentalConsoleSwitchOrgRequest](../models/ExperimentalConsoleSwitchOrgRequest.md) | ❌       | The request body. |
| directory    | str                                                                                     | ❌       |                   |
| workspace    | str                                                                                     | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import ExperimentalConsoleSwitchOrgRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ExperimentalConsoleSwitchOrgRequest(
    account_id="accountID",
    org_id="orgID"
)

result = sdk.experimental.experimental_console_switch_org(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tool_list

Get a list of available tools with their JSON schema parameters for a specific provider and model combination.

- HTTP Method: `GET`
- Endpoint: `/experimental/tool`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| provider  | str  | ✅       |             |
| model     | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[ToolListItem]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.experimental.tool_list(
    provider="provider",
    model="model",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tool_ids

Get a list of all available tool IDs, including both built-in tools and dynamically registered tools.

- HTTP Method: `GET`
- Endpoint: `/experimental/tool/ids`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[str]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.experimental.tool_ids(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## worktree_list

List all sandbox worktrees for the current project.

- HTTP Method: `GET`
- Endpoint: `/experimental/worktree`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[str]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.experimental.worktree_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## worktree_create

Create a new git worktree for the current project and run any configured startup scripts.

- HTTP Method: `POST`
- Endpoint: `/experimental/worktree`

**Parameters**

| Name         | Type                                                    | Required | Description       |
| :----------- | :------------------------------------------------------ | :------- | :---------------- |
| request_body | [WorktreeCreateInput](../models/WorktreeCreateInput.md) | ❌       | The request body. |
| directory    | str                                                     | ❌       |                   |
| workspace    | str                                                     | ❌       |                   |

**Return Type**

`Worktree`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import WorktreeCreateInput

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = WorktreeCreateInput(
    name="name",
    start_command="startCommand"
)

result = sdk.experimental.worktree_create(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## worktree_remove

Remove a git worktree and delete its branch.

- HTTP Method: `DELETE`
- Endpoint: `/experimental/worktree`

**Parameters**

| Name         | Type                                                    | Required | Description       |
| :----------- | :------------------------------------------------------ | :------- | :---------------- |
| request_body | [WorktreeRemoveInput](../models/WorktreeRemoveInput.md) | ❌       | The request body. |
| directory    | str                                                     | ❌       |                   |
| workspace    | str                                                     | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import WorktreeRemoveInput

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = WorktreeRemoveInput(
    directory="directory"
)

result = sdk.experimental.worktree_remove(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## worktree_reset

Reset a worktree branch to the primary default branch.

- HTTP Method: `POST`
- Endpoint: `/experimental/worktree/reset`

**Parameters**

| Name         | Type                                                  | Required | Description       |
| :----------- | :---------------------------------------------------- | :------- | :---------------- |
| request_body | [WorktreeResetInput](../models/WorktreeResetInput.md) | ❌       | The request body. |
| directory    | str                                                   | ❌       |                   |
| workspace    | str                                                   | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import WorktreeResetInput

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = WorktreeResetInput(
    directory="directory"
)

result = sdk.experimental.worktree_reset(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## experimental_session_list

Get a list of all OpenCode sessions across projects, sorted by most recently updated. Archived sessions are excluded by default.

- HTTP Method: `GET`
- Endpoint: `/experimental/session`

**Parameters**

| Name      | Type                                                                      | Required | Description |
| :-------- | :------------------------------------------------------------------------ | :------- | :---------- |
| directory | str                                                                       | ❌       |             |
| workspace | str                                                                       | ❌       |             |
| roots     | [ExperimentalSessionListRoots](../models/ExperimentalSessionListRoots.md) | ❌       |             |
| start     | float                                                                     | ❌       |             |
| cursor    | float                                                                     | ❌       |             |
| search    | str                                                                       | ❌       |             |
| limit     | float                                                                     | ❌       |             |
| archived  | [Archived](../models/Archived.md)                                         | ❌       |             |

**Return Type**

`List[GlobalSession]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)
roots=False
archived=False

result = sdk.experimental.experimental_session_list(
    directory="directory",
    workspace="workspace",
    roots=roots,
    start=3.88,
    cursor=7.9,
    search="search",
    limit=5.99,
    archived=archived
)

print(result)
```

## experimental_resource_list

Get all available MCP resources from connected servers. Optionally filter by name.

- HTTP Method: `GET`
- Endpoint: `/experimental/resource`

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

result = sdk.experimental.experimental_resource_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
