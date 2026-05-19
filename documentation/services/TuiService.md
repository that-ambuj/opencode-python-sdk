# TuiService

A list of all methods in the `TuiService` service. Click on the method name to view detailed information about that method.

| Methods                                       | Description                                                               |
| :-------------------------------------------- | :------------------------------------------------------------------------ |
| [tui_append_prompt](#tui_append_prompt)       | Append prompt to the TUI.                                                 |
| [tui_open_help](#tui_open_help)               | Open the help dialog in the TUI to display user assistance information.   |
| [tui_open_sessions](#tui_open_sessions)       | Open the session dialog.                                                  |
| [tui_open_themes](#tui_open_themes)           | Open the theme dialog.                                                    |
| [tui_open_models](#tui_open_models)           | Open the model dialog.                                                    |
| [tui_submit_prompt](#tui_submit_prompt)       | Submit the prompt.                                                        |
| [tui_clear_prompt](#tui_clear_prompt)         | Clear the prompt.                                                         |
| [tui_execute_command](#tui_execute_command)   | Execute a TUI command.                                                    |
| [tui_show_toast](#tui_show_toast)             | Show a toast notification in the TUI.                                     |
| [tui_publish](#tui_publish)                   | Publish a TUI event.                                                      |
| [tui_select_session](#tui_select_session)     | Navigate the TUI to display the specified session.                        |
| [tui_control_next](#tui_control_next)         | Retrieve the next TUI request from the queue for processing.              |
| [tui_control_response](#tui_control_response) | Submit a response to the TUI request queue to complete a pending request. |

## tui_append_prompt

Append prompt to the TUI.

- HTTP Method: `POST`
- Endpoint: `/tui/append-prompt`

**Parameters**

| Name         | Type                                                          | Required | Description       |
| :----------- | :------------------------------------------------------------ | :------- | :---------------- |
| request_body | [TuiAppendPromptRequest](../models/TuiAppendPromptRequest.md) | ❌       | The request body. |
| directory    | str                                                           | ❌       |                   |
| workspace    | str                                                           | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import TuiAppendPromptRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TuiAppendPromptRequest(
    text="text"
)

result = sdk.tui.tui_append_prompt(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_open_help

Open the help dialog in the TUI to display user assistance information.

- HTTP Method: `POST`
- Endpoint: `/tui/open-help`

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

result = sdk.tui.tui_open_help(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_open_sessions

Open the session dialog.

- HTTP Method: `POST`
- Endpoint: `/tui/open-sessions`

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

result = sdk.tui.tui_open_sessions(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_open_themes

Open the theme dialog.

- HTTP Method: `POST`
- Endpoint: `/tui/open-themes`

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

result = sdk.tui.tui_open_themes(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_open_models

Open the model dialog.

- HTTP Method: `POST`
- Endpoint: `/tui/open-models`

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

result = sdk.tui.tui_open_models(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_submit_prompt

Submit the prompt.

- HTTP Method: `POST`
- Endpoint: `/tui/submit-prompt`

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

result = sdk.tui.tui_submit_prompt(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_clear_prompt

Clear the prompt.

- HTTP Method: `POST`
- Endpoint: `/tui/clear-prompt`

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

result = sdk.tui.tui_clear_prompt(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_execute_command

Execute a TUI command.

- HTTP Method: `POST`
- Endpoint: `/tui/execute-command`

**Parameters**

| Name         | Type                                                              | Required | Description       |
| :----------- | :---------------------------------------------------------------- | :------- | :---------------- |
| request_body | [TuiExecuteCommandRequest](../models/TuiExecuteCommandRequest.md) | ❌       | The request body. |
| directory    | str                                                               | ❌       |                   |
| workspace    | str                                                               | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import TuiExecuteCommandRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TuiExecuteCommandRequest(
    command="command"
)

result = sdk.tui.tui_execute_command(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_show_toast

Show a toast notification in the TUI.

- HTTP Method: `POST`
- Endpoint: `/tui/show-toast`

**Parameters**

| Name         | Type                                                    | Required | Description       |
| :----------- | :------------------------------------------------------ | :------- | :---------------- |
| request_body | [TuiShowToastRequest](../models/TuiShowToastRequest.md) | ❌       | The request body. |
| directory    | str                                                     | ❌       |                   |
| workspace    | str                                                     | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import TuiShowToastRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TuiShowToastRequest(
    title="title",
    message="message",
    variant="info",
    duration=2
)

result = sdk.tui.tui_show_toast(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_publish

Publish a TUI event.

- HTTP Method: `POST`
- Endpoint: `/tui/publish`

**Parameters**

| Name         | Type                                                | Required | Description       |
| :----------- | :-------------------------------------------------- | :------- | :---------------- |
| request_body | [TuiPublishRequest](../models/TuiPublishRequest.md) | ❌       | The request body. |
| directory    | str                                                 | ❌       |                   |
| workspace    | str                                                 | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models.tui_publish_request import TuiPublishRequest1

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TuiPublishRequest1(
    type_="tui.prompt.append",
    properties={
        "text": "text"
    }
)

result = sdk.tui.tui_publish(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_select_session

Navigate the TUI to display the specified session.

- HTTP Method: `POST`
- Endpoint: `/tui/select-session`

**Parameters**

| Name         | Type                                                            | Required | Description       |
| :----------- | :-------------------------------------------------------------- | :------- | :---------------- |
| request_body | [TuiSelectSessionRequest](../models/TuiSelectSessionRequest.md) | ❌       | The request body. |
| directory    | str                                                             | ❌       |                   |
| workspace    | str                                                             | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import TuiSelectSessionRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = TuiSelectSessionRequest(
    session_id="sessionID"
)

result = sdk.tui.tui_select_session(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_control_next

Retrieve the next TUI request from the queue for processing.

- HTTP Method: `GET`
- Endpoint: `/tui/control/next`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`TuiControlNextOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.tui.tui_control_next(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## tui_control_response

Submit a response to the TUI request queue to complete a pending request.

- HTTP Method: `POST`
- Endpoint: `/tui/control/response`

**Parameters**

| Name         | Type | Required | Description       |
| :----------- | :--- | :------- | :---------------- |
| request_body | any  | ❌       | The request body. |
| directory    | str  | ❌       |                   |
| workspace    | str  | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import any

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ""

result = sdk.tui.tui_control_response(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
