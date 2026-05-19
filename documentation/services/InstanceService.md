# InstanceService

A list of all methods in the `InstanceService` service. Click on the method name to view detailed information about that method.

| Methods                               | Description                                                                                    |
| :------------------------------------ | :--------------------------------------------------------------------------------------------- |
| [instance_dispose](#instance_dispose) | Clean up and dispose the current OpenCode instance, releasing all resources.                   |
| [path_get](#path_get)                 | Retrieve the current working directory and related path information for the OpenCode instance. |
| [vcs_get](#vcs_get)                   | Retrieve version control system (VCS) information for the current project, such as git branch. |
| [vcs_status](#vcs_status)             | Retrieve changed files in the current working tree without patches.                            |
| [vcs_diff](#vcs_diff)                 | Retrieve the current git diff for the working tree or against the default branch.              |
| [vcs_diff_raw](#vcs_diff_raw)         | Retrieve a raw patch for current uncommitted changes.                                          |
| [vcs_apply](#vcs_apply)               | Apply a raw patch to the current working tree.                                                 |
| [command_list](#command_list)         | Get a list of all available commands in the OpenCode system.                                   |
| [app_agents](#app_agents)             | Get a list of all available AI agents in the OpenCode system.                                  |
| [app_skills](#app_skills)             | Get a list of all available skills in the OpenCode system.                                     |
| [lsp_status](#lsp_status)             | Get LSP server status                                                                          |
| [formatter_status](#formatter_status) | Get formatter status                                                                           |

## instance_dispose

Clean up and dispose the current OpenCode instance, releasing all resources.

- HTTP Method: `POST`
- Endpoint: `/instance/dispose`

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

result = sdk.instance.instance_dispose(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## path_get

Retrieve the current working directory and related path information for the OpenCode instance.

- HTTP Method: `GET`
- Endpoint: `/path`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`Path`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.path_get(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## vcs_get

Retrieve version control system (VCS) information for the current project, such as git branch.

- HTTP Method: `GET`
- Endpoint: `/vcs`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`VcsInfo`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.vcs_get(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## vcs_status

Retrieve changed files in the current working tree without patches.

- HTTP Method: `GET`
- Endpoint: `/vcs/status`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[VcsFileStatus]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.vcs_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## vcs_diff

Retrieve the current git diff for the working tree or against the default branch.

- HTTP Method: `GET`
- Endpoint: `/vcs/diff`

**Parameters**

| Name      | Type                                    | Required | Description |
| :-------- | :-------------------------------------- | :------- | :---------- |
| mode      | [VcsDiffMode](../models/VcsDiffMode.md) | ✅       |             |
| directory | str                                     | ❌       |             |
| workspace | str                                     | ❌       |             |

**Return Type**

`List[VcsFileDiff]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import VcsDiffMode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.vcs_diff(
    mode="git",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## vcs_diff_raw

Retrieve a raw patch for current uncommitted changes.

- HTTP Method: `GET`
- Endpoint: `/vcs/diff/raw`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`str`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.vcs_diff_raw(
    directory="directory",
    workspace="workspace"
)

with open("output-file.txt", "w") as f:
    f.write(result)
```

## vcs_apply

Apply a raw patch to the current working tree.

- HTTP Method: `POST`
- Endpoint: `/vcs/apply`

**Parameters**

| Name         | Type                                            | Required | Description       |
| :----------- | :---------------------------------------------- | :------- | :---------------- |
| request_body | [VcsApplyRequest](../models/VcsApplyRequest.md) | ❌       | The request body. |
| directory    | str                                             | ❌       |                   |
| workspace    | str                                             | ❌       |                   |

**Return Type**

`VcsApplyOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import VcsApplyRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = VcsApplyRequest(
    patch="patch"
)

result = sdk.instance.vcs_apply(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## command_list

Get a list of all available commands in the OpenCode system.

- HTTP Method: `GET`
- Endpoint: `/command`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[Command]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.command_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## app_agents

Get a list of all available AI agents in the OpenCode system.

- HTTP Method: `GET`
- Endpoint: `/agent`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[Agent]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.app_agents(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## app_skills

Get a list of all available skills in the OpenCode system.

- HTTP Method: `GET`
- Endpoint: `/skill`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[AppSkillsOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.app_skills(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## lsp_status

Get LSP server status

- HTTP Method: `GET`
- Endpoint: `/lsp`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[LspStatus]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.lsp_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## formatter_status

Get formatter status

- HTTP Method: `GET`
- Endpoint: `/formatter`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[FormatterStatus]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.instance.formatter_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
