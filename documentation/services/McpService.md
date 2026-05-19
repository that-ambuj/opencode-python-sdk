# McpService

A list of all methods in the `McpService` service. Click on the method name to view detailed information about that method.

| Methods                                         | Description                                                                                           |
| :---------------------------------------------- | :---------------------------------------------------------------------------------------------------- |
| [mcp_status](#mcp_status)                       | Get the status of all Model Context Protocol (MCP) servers.                                           |
| [mcp_add](#mcp_add)                             | Dynamically add a new Model Context Protocol (MCP) server to the system.                              |
| [mcp_auth_start](#mcp_auth_start)               | Start OAuth authentication flow for a Model Context Protocol (MCP) server.                            |
| [mcp_auth_remove](#mcp_auth_remove)             | Remove OAuth credentials for an MCP server.                                                           |
| [mcp_auth_callback](#mcp_auth_callback)         | Complete OAuth authentication for a Model Context Protocol (MCP) server using the authorization code. |
| [mcp_auth_authenticate](#mcp_auth_authenticate) | Start OAuth flow and wait for callback (opens browser).                                               |
| [mcp_connect](#mcp_connect)                     | Connect an MCP server.                                                                                |
| [mcp_disconnect](#mcp_disconnect)               | Disconnect an MCP server.                                                                             |

## mcp_status

Get the status of all Model Context Protocol (MCP) servers.

- HTTP Method: `GET`
- Endpoint: `/mcp`

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

result = sdk.mcp.mcp_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_add

Dynamically add a new Model Context Protocol (MCP) server to the system.

- HTTP Method: `POST`
- Endpoint: `/mcp`

**Parameters**

| Name         | Type                                        | Required | Description       |
| :----------- | :------------------------------------------ | :------- | :---------------- |
| request_body | [McpAddRequest](../models/McpAddRequest.md) | ❌       | The request body. |
| directory    | str                                         | ❌       |                   |
| workspace    | str                                         | ❌       |                   |

**Return Type**

`dict`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import McpAddRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = McpAddRequest(
    name="name",
    config={
        "type_": "local",
        "command": [
            "command"
        ],
        "environment": {},
        "enabled": False,
        "timeout": 3
    }
)

result = sdk.mcp.mcp_add(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_auth_start

Start OAuth authentication flow for a Model Context Protocol (MCP) server.

- HTTP Method: `POST`
- Endpoint: `/mcp/{name}/auth`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| name      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`McpAuthStartOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.mcp.mcp_auth_start(
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_auth_remove

Remove OAuth credentials for an MCP server.

- HTTP Method: `DELETE`
- Endpoint: `/mcp/{name}/auth`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| name      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`McpAuthRemoveOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.mcp.mcp_auth_remove(
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_auth_callback

Complete OAuth authentication for a Model Context Protocol (MCP) server using the authorization code.

- HTTP Method: `POST`
- Endpoint: `/mcp/{name}/auth/callback`

**Parameters**

| Name         | Type                                                          | Required | Description       |
| :----------- | :------------------------------------------------------------ | :------- | :---------------- |
| request_body | [McpAuthCallbackRequest](../models/McpAuthCallbackRequest.md) | ❌       | The request body. |
| name         | str                                                           | ✅       |                   |
| directory    | str                                                           | ❌       |                   |
| workspace    | str                                                           | ❌       |                   |

**Return Type**

`McpStatus`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import McpAuthCallbackRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = McpAuthCallbackRequest(
    code="code"
)

result = sdk.mcp.mcp_auth_callback(
    request_body=request_body,
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_auth_authenticate

Start OAuth flow and wait for callback (opens browser).

- HTTP Method: `POST`
- Endpoint: `/mcp/{name}/auth/authenticate`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| name      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`McpStatus`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.mcp.mcp_auth_authenticate(
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_connect

Connect an MCP server.

- HTTP Method: `POST`
- Endpoint: `/mcp/{name}/connect`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| name      | str  | ✅       |             |
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

result = sdk.mcp.mcp_connect(
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## mcp_disconnect

Disconnect an MCP server.

- HTTP Method: `POST`
- Endpoint: `/mcp/{name}/disconnect`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| name      | str  | ✅       |             |
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

result = sdk.mcp.mcp_disconnect(
    name="name",
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
