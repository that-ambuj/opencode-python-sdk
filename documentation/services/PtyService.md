# PtyService

A list of all methods in the `PtyService` service. Click on the method name to view detailed information about that method.

| Methods                                 | Description                                                                                     |
| :-------------------------------------- | :---------------------------------------------------------------------------------------------- |
| [pty_shells](#pty_shells)               | Get a list of available shells on the system.                                                   |
| [pty_list](#pty_list)                   | Get a list of all active pseudo-terminal (PTY) sessions managed by OpenCode.                    |
| [pty_create](#pty_create)               | Create a new pseudo-terminal (PTY) session for running shell commands and processes.            |
| [pty_get](#pty_get)                     | Retrieve detailed information about a specific pseudo-terminal (PTY) session.                   |
| [pty_update](#pty_update)               | Update properties of an existing pseudo-terminal (PTY) session.                                 |
| [pty_remove](#pty_remove)               | Remove and terminate a specific pseudo-terminal (PTY) session.                                  |
| [pty_connect_token](#pty_connect_token) | Create a short-lived ticket for opening a PTY WebSocket connection.                             |
| [pty_connect](#pty_connect)             | Establish a WebSocket connection to interact with a pseudo-terminal (PTY) session in real-time. |

## pty_shells

Get a list of available shells on the system.

- HTTP Method: `GET`
- Endpoint: `/pty/shells`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[PtyShellsOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.pty.pty_shells(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_list

Get a list of all active pseudo-terminal (PTY) sessions managed by OpenCode.

- HTTP Method: `GET`
- Endpoint: `/pty`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[Pty]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.pty.pty_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_create

Create a new pseudo-terminal (PTY) session for running shell commands and processes.

- HTTP Method: `POST`
- Endpoint: `/pty`

**Parameters**

| Name         | Type                                              | Required | Description       |
| :----------- | :------------------------------------------------ | :------- | :---------------- |
| request_body | [PtyCreateRequest](../models/PtyCreateRequest.md) | ❌       | The request body. |
| directory    | str                                               | ❌       |                   |
| workspace    | str                                               | ❌       |                   |

**Return Type**

`Pty`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import PtyCreateRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = PtyCreateRequest(
    command="command",
    args=[
        "args"
    ],
    cwd="cwd",
    title="title",
    env={}
)

result = sdk.pty.pty_create(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_get

Retrieve detailed information about a specific pseudo-terminal (PTY) session.

- HTTP Method: `GET`
- Endpoint: `/pty/{ptyID}`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| pty_id    | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`Pty`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.pty.pty_get(
    pty_id="ptyID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_update

Update properties of an existing pseudo-terminal (PTY) session.

- HTTP Method: `PUT`
- Endpoint: `/pty/{ptyID}`

**Parameters**

| Name         | Type                                              | Required | Description       |
| :----------- | :------------------------------------------------ | :------- | :---------------- |
| request_body | [PtyUpdateRequest](../models/PtyUpdateRequest.md) | ❌       | The request body. |
| pty_id       | str                                               | ✅       |                   |
| directory    | str                                               | ❌       |                   |
| workspace    | str                                               | ❌       |                   |

**Return Type**

`Pty`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import PtyUpdateRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = PtyUpdateRequest(
    title="title",
    size={
        "rows": 1,
        "cols": 9
    }
)

result = sdk.pty.pty_update(
    request_body=request_body,
    pty_id="ptyID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_remove

Remove and terminate a specific pseudo-terminal (PTY) session.

- HTTP Method: `DELETE`
- Endpoint: `/pty/{ptyID}`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| pty_id    | str  | ✅       |             |
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

result = sdk.pty.pty_remove(
    pty_id="ptyID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_connect_token

Create a short-lived ticket for opening a PTY WebSocket connection.

- HTTP Method: `POST`
- Endpoint: `/pty/{ptyID}/connect-token`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| pty_id    | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`PtyConnectTokenOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.pty.pty_connect_token(
    pty_id="ptyID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## pty_connect

Establish a WebSocket connection to interact with a pseudo-terminal (PTY) session in real-time.

- HTTP Method: `GET`
- Endpoint: `/pty/{ptyID}/connect`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| pty_id    | str  | ✅       |             |
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

result = sdk.pty.pty_connect(
    pty_id="ptyID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
