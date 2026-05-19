# ProviderV2Info

**Properties**

| Name     | Type                   | Required | Description |
| :------- | :--------------------- | :------- | :---------- |
| id\_     | str                    | ✅       |             |
| name     | str                    | ✅       |             |
| enabled  | Enabled                | ✅       |             |
| env      | List[str]              | ✅       |             |
| endpoint | ProviderV2InfoEndpoint | ✅       |             |
| options  | ProviderV2InfoOptions  | ✅       |             |

# Enabled

# Enabled_1

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| FALSE | str  | ✅       | "false"     |

# Enabled_2

**Properties**

| Name | Type        | Required | Description |
| :--- | :---------- | :------- | :---------- |
| via  | Enabled2Via | ✅       |             |
| name | str         | ✅       |             |

# Enabled_2Via

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| ENV  | str  | ✅       | "env"       |

# Enabled_3

**Properties**

| Name    | Type        | Required | Description |
| :------ | :---------- | :------- | :---------- |
| via     | Enabled3Via | ✅       |             |
| service | str         | ✅       |             |

# Enabled_3Via

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| AUTH | str  | ✅       | "auth"      |

# Enabled_4

**Properties**

| Name | Type        | Required | Description |
| :--- | :---------- | :------- | :---------- |
| via  | Enabled4Via | ✅       |             |
| data | dict        | ✅       |             |

# Enabled_4Via

**Properties**

| Name   | Type | Required | Description |
| :----- | :--- | :------- | :---------- |
| CUSTOM | str  | ✅       | "custom"    |

# ProviderV2InfoEndpoint

# Endpoint_1_2

**Properties**

| Name   | Type           | Required | Description |
| :----- | :------------- | :------- | :---------- |
| type\_ | Endpoint1Type2 | ✅       |             |

# Endpoint_1Type_2

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| UNKNOWN | str  | ✅       | "unknown"   |

# Endpoint_2_2

**Properties**

| Name      | Type           | Required | Description |
| :-------- | :------------- | :------- | :---------- |
| type\_    | Endpoint2Type2 | ✅       |             |
| url       | str            | ✅       |             |
| websocket | bool           | ❌       |             |

# Endpoint_2Type_2

**Properties**

| Name            | Type | Required | Description        |
| :-------------- | :--- | :------- | :----------------- |
| OPENAIRESPONSES | str  | ✅       | "openai/responses" |

# Endpoint_3_2

**Properties**

| Name      | Type                | Required | Description |
| :-------- | :------------------ | :------- | :---------- |
| type\_    | Endpoint3Type2      | ✅       |             |
| url       | str                 | ✅       |             |
| reasoning | Endpoint3Reasoning2 | ❌       |             |

# Endpoint_3Type_2

**Properties**

| Name              | Type | Required | Description          |
| :---------------- | :--- | :------- | :------------------- |
| OPENAICOMPLETIONS | str  | ✅       | "openai/completions" |

# Endpoint_3Reasoning_2

# Reasoning_1_2

**Properties**

| Name   | Type            | Required | Description |
| :----- | :-------------- | :------- | :---------- |
| type\_ | Reasoning1Type2 | ✅       |             |

# Reasoning_1Type_2

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGCONTENT | str  | ✅       | "reasoning_content" |

# Reasoning_2_2

**Properties**

| Name   | Type            | Required | Description |
| :----- | :-------------- | :------- | :---------- |
| type\_ | Reasoning2Type2 | ✅       |             |

# Reasoning_2Type_2

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGDETAILS | str  | ✅       | "reasoning_details" |

# Endpoint_4_2

**Properties**

| Name   | Type           | Required | Description |
| :----- | :------------- | :------- | :---------- |
| type\_ | Endpoint4Type2 | ✅       |             |
| url    | str            | ✅       |             |

# Endpoint_4Type_2

**Properties**

| Name              | Type | Required | Description          |
| :---------------- | :--- | :------- | :------------------- |
| ANTHROPICMESSAGES | str  | ✅       | "anthropic/messages" |

# Endpoint_5_2

**Properties**

| Name    | Type           | Required | Description |
| :------ | :------------- | :------- | :---------- |
| type\_  | Endpoint5Type2 | ✅       |             |
| package | str            | ✅       |             |
| url     | str            | ❌       |             |

# Endpoint_5Type_2

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| AISDK | str  | ✅       | "aisdk"     |

# ProviderV2InfoOptions

**Properties**

| Name    | Type          | Required | Description |
| :------ | :------------ | :------- | :---------- |
| headers | dict          | ✅       |             |
| body    | dict          | ✅       |             |
| aisdk   | OptionsAisdk2 | ✅       |             |

# OptionsAisdk_2

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| provider | dict | ✅       |             |
| request  | dict | ✅       |             |

<!-- This file was generated by liblab | https://liblab.com/ -->
