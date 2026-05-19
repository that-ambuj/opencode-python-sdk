# ConfigService

A list of all methods in the `ConfigService` service. Click on the method name to view detailed information about that method.

| Methods                               | Description                                                           |
| :------------------------------------ | :-------------------------------------------------------------------- |
| [config_get](#config_get)             | Retrieve the current OpenCode configuration settings and preferences. |
| [config_update](#config_update)       | Update OpenCode configuration settings and preferences.               |
| [config_providers](#config_providers) | Get a list of all configured AI providers and their default models.   |

## config_get

Retrieve the current OpenCode configuration settings and preferences.

- HTTP Method: `GET`
- Endpoint: `/config`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`Config`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.config.config_get(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## config_update

Update OpenCode configuration settings and preferences.

- HTTP Method: `PATCH`
- Endpoint: `/config`

**Parameters**

| Name         | Type                          | Required | Description       |
| :----------- | :---------------------------- | :------- | :---------------- |
| request_body | [Config](../models/Config.md) | ❌       | The request body. |
| directory    | str                           | ❌       |                   |
| workspace    | str                           | ❌       |                   |

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

result = sdk.config.config_update(
    request_body=request_body,
    directory="directory",
    workspace="workspace"
)

print(result)
```

## config_providers

Get a list of all configured AI providers and their default models.

- HTTP Method: `GET`
- Endpoint: `/config/providers`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`ConfigProvidersOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.config.config_providers(
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
