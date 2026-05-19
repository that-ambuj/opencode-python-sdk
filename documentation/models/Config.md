# Config

**Properties**

| Name               | Type                                    | Required | Description                                                                                                                                  |
| :----------------- | :-------------------------------------- | :------- | :------------------------------------------------------------------------------------------------------------------------------------------- |
| schema             | str                                     | ❌       |                                                                                                                                              |
| shell              | str                                     | ❌       |                                                                                                                                              |
| log_level          | [LogLevel](LogLevel.md)                 | ❌       | Log level                                                                                                                                    |
| server             | [ServerConfig](ServerConfig.md)         | ❌       | Server configuration for opencode serve and web commands                                                                                     |
| command            | dict                                    | ❌       |                                                                                                                                              |
| skills             | Skills                                  | ❌       |                                                                                                                                              |
| reference          | dict                                    | ❌       |                                                                                                                                              |
| watcher            | Watcher                                 | ❌       |                                                                                                                                              |
| snapshot           | bool                                    | ❌       |                                                                                                                                              |
| plugin             | List[Plugin]                            | ❌       |                                                                                                                                              |
| share              | ConfigShare                             | ❌       |                                                                                                                                              |
| autoshare          | bool                                    | ❌       |                                                                                                                                              |
| autoupdate         | Autoupdate                              | ❌       | Automatically update to the latest version. Set to true to auto-update, false to disable, or 'notify' to show update notifications           |
| disabled_providers | List[str]                               | ❌       |                                                                                                                                              |
| enabled_providers  | List[str]                               | ❌       |                                                                                                                                              |
| model              | str                                     | ❌       |                                                                                                                                              |
| small_model        | str                                     | ❌       |                                                                                                                                              |
| default_agent      | str                                     | ❌       |                                                                                                                                              |
| username           | str                                     | ❌       |                                                                                                                                              |
| mode               | ConfigMode                              | ❌       |                                                                                                                                              |
| agent              | ConfigAgent                             | ❌       |                                                                                                                                              |
| provider           | dict                                    | ❌       |                                                                                                                                              |
| mcp                | dict                                    | ❌       |                                                                                                                                              |
| formatter          | Formatter                               | ❌       | Enable or configure formatters. Omit or set to false to disable, true to enable built-ins, or an object to enable built-ins with overrides.  |
| lsp                | Lsp                                     | ❌       | Enable or configure LSP servers. Omit or set to false to disable, true to enable built-ins, or an object to enable built-ins with overrides. |
| instructions       | List[str]                               | ❌       |                                                                                                                                              |
| layout             | [LayoutConfig](LayoutConfig.md)         | ❌       | @deprecated Always uses stretch layout.                                                                                                      |
| permission         | [PermissionConfig](PermissionConfig.md) | ❌       |                                                                                                                                              |
| tools              | dict                                    | ❌       |                                                                                                                                              |
| attachment         | [AttachmentConfig](AttachmentConfig.md) | ❌       |                                                                                                                                              |
| enterprise         | Enterprise                              | ❌       |                                                                                                                                              |
| tool_output        | ToolOutput                              | ❌       |                                                                                                                                              |
| compaction         | Compaction                              | ❌       |                                                                                                                                              |
| experimental       | Experimental                            | ❌       |                                                                                                                                              |

# ConfigCommand

**Properties**

| Name        | Type | Required | Description |
| :---------- | :--- | :------- | :---------- |
| template    | str  | ✅       |             |
| description | str  | ❌       |             |
| agent       | str  | ❌       |             |
| model       | str  | ❌       |             |
| subtask     | bool | ❌       |             |

# Skills

**Properties**

| Name  | Type      | Required | Description |
| :---- | :-------- | :------- | :---------- |
| paths | List[str] | ❌       |             |
| urls  | List[str] | ❌       |             |

# Watcher

**Properties**

| Name   | Type      | Required | Description |
| :----- | :-------- | :------- | :---------- |
| ignore | List[str] | ❌       |             |

# Plugin

# ConfigShare

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| MANUAL   | str  | ✅       | "manual"    |
| AUTO     | str  | ✅       | "auto"      |
| DISABLED | str  | ✅       | "disabled"  |

# Autoupdate

Automatically update to the latest version. Set to true to auto-update, false to disable, or 'notify' to show update notifications

# Autoupdate_2

**Properties**

| Name   | Type | Required | Description |
| :----- | :--- | :------- | :---------- |
| NOTIFY | str  | ✅       | "notify"    |

# ConfigMode

**Properties**

| Name  | Type                          | Required | Description |
| :---- | :---------------------------- | :------- | :---------- |
| build | [AgentConfig](AgentConfig.md) | ❌       |             |
| plan  | [AgentConfig](AgentConfig.md) | ❌       |             |

# ConfigAgent

**Properties**

| Name       | Type                          | Required | Description |
| :--------- | :---------------------------- | :------- | :---------- |
| plan       | [AgentConfig](AgentConfig.md) | ❌       |             |
| build      | [AgentConfig](AgentConfig.md) | ❌       |             |
| general    | [AgentConfig](AgentConfig.md) | ❌       |             |
| explore    | [AgentConfig](AgentConfig.md) | ❌       |             |
| scout      | [AgentConfig](AgentConfig.md) | ❌       |             |
| title      | [AgentConfig](AgentConfig.md) | ❌       |             |
| summary    | [AgentConfig](AgentConfig.md) | ❌       |             |
| compaction | [AgentConfig](AgentConfig.md) | ❌       |             |

# Mcp

# Mcp_3

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| enabled | bool | ✅       |             |

# Formatter

Enable or configure formatters. Omit or set to false to disable, true to enable built-ins, or an object to enable built-ins with overrides.

# Formatter_2

**Properties**

| Name        | Type      | Required | Description |
| :---------- | :-------- | :------- | :---------- |
| disabled    | bool      | ❌       |             |
| command     | List[str] | ❌       |             |
| environment | dict      | ❌       |             |
| extensions  | List[str] | ❌       |             |

# Lsp

Enable or configure LSP servers. Omit or set to false to disable, true to enable built-ins, or an object to enable built-ins with overrides.

# Lsp_2

# Lsp_2_1

**Properties**

| Name     | Type     | Required | Description |
| :------- | :------- | :------- | :---------- |
| disabled | Disabled | ✅       |             |

# Disabled

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| TRUE | str  | ✅       | "true"      |

# Lsp_2_2

**Properties**

| Name           | Type      | Required | Description |
| :------------- | :-------- | :------- | :---------- |
| command        | List[str] | ✅       |             |
| extensions     | List[str] | ❌       |             |
| disabled       | bool      | ❌       |             |
| env            | dict      | ❌       |             |
| initialization | dict      | ❌       |             |

# Enterprise

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| url  | str  | ❌       |             |

# ToolOutput

**Properties**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| max_lines | int  | ❌       |             |
| max_bytes | int  | ❌       |             |

# Compaction

**Properties**

| Name                   | Type | Required | Description |
| :--------------------- | :--- | :------- | :---------- |
| auto                   | bool | ❌       |             |
| prune                  | bool | ❌       |             |
| tail_turns             | int  | ❌       |             |
| preserve_recent_tokens | int  | ❌       |             |
| reserved               | int  | ❌       |             |

# Experimental

**Properties**

| Name                  | Type      | Required | Description |
| :-------------------- | :-------- | :------- | :---------- |
| disable_paste_summary | bool      | ❌       |             |
| batch_tool            | bool      | ❌       |             |
| open_telemetry        | bool      | ❌       |             |
| primary_tools         | List[str] | ❌       |             |
| continue_loop_on_deny | bool      | ❌       |             |
| mcp_timeout           | int       | ❌       |             |

<!-- This file was generated by liblab | https://liblab.com/ -->
