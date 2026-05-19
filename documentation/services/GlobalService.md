# GlobalService

A list of all methods in the `GlobalService` service. Click on the method name to view detailed information about that method.

| Methods                                       | Description                                                                   |
| :-------------------------------------------- | :---------------------------------------------------------------------------- |
| [global_health](#global_health)               | Get health information about the OpenCode server.                             |
| [global_event](#global_event)                 | Subscribe to global events from the OpenCode system using server-sent events. |
| [global_config_get](#global_config_get)       | Retrieve the current global OpenCode configuration settings and preferences.  |
| [global_config_update](#global_config_update) | Update global OpenCode configuration settings and preferences.                |
| [global_dispose](#global_dispose)             | Clean up and dispose all OpenCode instances, releasing all resources.         |
| [global_upgrade](#global_upgrade)             | Upgrade opencode to the specified version or latest if not specified.         |

## global_health

Get health information about the OpenCode server.

- HTTP Method: `GET`
- Endpoint: `/global/health`

**Return Type**

`GlobalHealthOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.global_.global_health()

print(result)
```

## global_event

Subscribe to global events from the OpenCode system using server-sent events.

- HTTP Method: `GET`
- Endpoint: `/global/event`

**Return Type**

`GlobalEvent`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

response_iterator = sdk.global_.global_event()

for chunk in response_iterator:
    print(chunk)
```

## global_config_get

Retrieve the current global OpenCode configuration settings and preferences.

- HTTP Method: `GET`
- Endpoint: `/global/config`

**Return Type**

`Config`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.global_.global_config_get()

print(result)
```

## global_config_update

Update global OpenCode configuration settings and preferences.

- HTTP Method: `PATCH`
- Endpoint: `/global/config`

**Parameters**

| Name         | Type                          | Required | Description       |
| :----------- | :---------------------------- | :------- | :---------------- |
| request_body | [Config](../models/Config.md) | ❌       | The request body. |

**Return Type**

`Config`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import Config

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = Config(
    schema="$schema",
    shell="shell",
    log_level="DEBUG",
    server={
        "port": 5,
        "hostname": "hostname",
        "mdns": True,
        "mdns_domain": "mdnsDomain",
        "cors": [
            "cors"
        ]
    },
    command={},
    skills={
        "paths": [
            "paths"
        ],
        "urls": [
            "urls"
        ]
    },
    reference={},
    watcher={
        "ignore": [
            "ignore"
        ]
    },
    snapshot=False,
    plugin=[
        "cupidatat sint"
    ],
    share="manual",
    autoshare=False,
    autoupdate=False,
    disabled_providers=[
        "disabled_providers"
    ],
    enabled_providers=[
        "enabled_providers"
    ],
    model="model",
    small_model="small_model",
    default_agent="default_agent",
    username="username",
    mode={
        "build": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "plan": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        }
    },
    agent={
        "plan": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "build": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "general": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "explore": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "scout": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "title": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "summary": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        },
        "compaction": {
            "model": "model",
            "variant": "variant",
            "temperature": 1.95,
            "top_p": 4.28,
            "prompt": "prompt",
            "tools": {},
            "disable": True,
            "description": "description",
            "mode": "subagent",
            "hidden": True,
            "options": {},
            "color": "#ecA2be",
            "steps": 10,
            "max_steps": 4,
            "permission": "ask"
        }
    },
    provider={},
    mcp={},
    formatter=True,
    lsp=False,
    instructions=[
        "instructions"
    ],
    layout="auto",
    permission="ask",
    tools={},
    attachment={
        "image": {
            "auto_resize": True,
            "max_width": 3,
            "max_height": 0,
            "max_base64_bytes": 3
        }
    },
    enterprise={
        "url": "url"
    },
    tool_output={
        "max_lines": 7,
        "max_bytes": 2
    },
    compaction={
        "auto": False,
        "prune": True,
        "tail_turns": 1,
        "preserve_recent_tokens": 9,
        "reserved": 0
    },
    experimental={
        "disable_paste_summary": True,
        "batch_tool": False,
        "open_telemetry": True,
        "primary_tools": [
            "primary_tools"
        ],
        "continue_loop_on_deny": True,
        "mcp_timeout": 2
    }
)

result = sdk.global_.global_config_update(request_body=request_body)

print(result)
```

## global_dispose

Clean up and dispose all OpenCode instances, releasing all resources.

- HTTP Method: `POST`
- Endpoint: `/global/dispose`

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.global_.global_dispose()

print(result)
```

## global_upgrade

Upgrade opencode to the specified version or latest if not specified.

- HTTP Method: `POST`
- Endpoint: `/global/upgrade`

**Parameters**

| Name         | Type                                                      | Required | Description       |
| :----------- | :-------------------------------------------------------- | :------- | :---------------- |
| request_body | [GlobalUpgradeRequest](../models/GlobalUpgradeRequest.md) | ❌       | The request body. |

**Return Type**

`GlobalUpgradeOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import GlobalUpgradeRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = GlobalUpgradeRequest(
    target="target"
)

result = sdk.global_.global_upgrade(request_body=request_body)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
