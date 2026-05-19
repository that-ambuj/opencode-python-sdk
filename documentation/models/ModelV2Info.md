# ModelV2Info

**Properties**

| Name         | Type                      | Required | Description |
| :----------- | :------------------------ | :------- | :---------- |
| id\_         | str                       | ✅       |             |
| api_id       | str                       | ✅       |             |
| provider_id  | str                       | ✅       |             |
| name         | str                       | ✅       |             |
| endpoint     | ModelV2InfoEndpoint       | ✅       |             |
| capabilities | ModelV2InfoCapabilities   | ✅       |             |
| options      | ModelV2InfoOptions        | ✅       |             |
| variants     | List[ModelV2InfoVariants] | ✅       |             |
| time         | ModelV2InfoTime           | ✅       |             |
| cost         | List[ModelV2InfoCost]     | ✅       |             |
| status       | ModelV2InfoStatus         | ✅       |             |
| enabled      | bool                      | ✅       |             |
| limit        | ModelV2InfoLimit          | ✅       |             |
| family       | str                       | ❌       |             |

# ModelV2InfoEndpoint

# Endpoint_1_1

**Properties**

| Name   | Type           | Required | Description |
| :----- | :------------- | :------- | :---------- |
| type\_ | Endpoint1Type1 | ✅       |             |

# Endpoint_1Type_1

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| UNKNOWN | str  | ✅       | "unknown"   |

# Endpoint_2_1

**Properties**

| Name      | Type           | Required | Description |
| :-------- | :------------- | :------- | :---------- |
| type\_    | Endpoint2Type1 | ✅       |             |
| url       | str            | ✅       |             |
| websocket | bool           | ❌       |             |

# Endpoint_2Type_1

**Properties**

| Name            | Type | Required | Description        |
| :-------------- | :--- | :------- | :----------------- |
| OPENAIRESPONSES | str  | ✅       | "openai/responses" |

# Endpoint_3_1

**Properties**

| Name      | Type                | Required | Description |
| :-------- | :------------------ | :------- | :---------- |
| type\_    | Endpoint3Type1      | ✅       |             |
| url       | str                 | ✅       |             |
| reasoning | Endpoint3Reasoning1 | ❌       |             |

# Endpoint_3Type_1

**Properties**

| Name              | Type | Required | Description          |
| :---------------- | :--- | :------- | :------------------- |
| OPENAICOMPLETIONS | str  | ✅       | "openai/completions" |

# Endpoint_3Reasoning_1

# Reasoning_1_1

**Properties**

| Name   | Type            | Required | Description |
| :----- | :-------------- | :------- | :---------- |
| type\_ | Reasoning1Type1 | ✅       |             |

# Reasoning_1Type_1

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGCONTENT | str  | ✅       | "reasoning_content" |

# Reasoning_2_1

**Properties**

| Name   | Type            | Required | Description |
| :----- | :-------------- | :------- | :---------- |
| type\_ | Reasoning2Type1 | ✅       |             |

# Reasoning_2Type_1

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGDETAILS | str  | ✅       | "reasoning_details" |

# Endpoint_4_1

**Properties**

| Name   | Type           | Required | Description |
| :----- | :------------- | :------- | :---------- |
| type\_ | Endpoint4Type1 | ✅       |             |
| url    | str            | ✅       |             |

# Endpoint_4Type_1

**Properties**

| Name              | Type | Required | Description          |
| :---------------- | :--- | :------- | :------------------- |
| ANTHROPICMESSAGES | str  | ✅       | "anthropic/messages" |

# Endpoint_5_1

**Properties**

| Name    | Type           | Required | Description |
| :------ | :------------- | :------- | :---------- |
| type\_  | Endpoint5Type1 | ✅       |             |
| package | str            | ✅       |             |
| url     | str            | ❌       |             |

# Endpoint_5Type_1

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| AISDK | str  | ✅       | "aisdk"     |

# ModelV2InfoCapabilities

**Properties**

| Name   | Type      | Required | Description |
| :----- | :-------- | :------- | :---------- |
| tools  | bool      | ✅       |             |
| input  | List[str] | ✅       |             |
| output | List[str] | ✅       |             |

# ModelV2InfoOptions

**Properties**

| Name    | Type          | Required | Description |
| :------ | :------------ | :------- | :---------- |
| headers | dict          | ✅       |             |
| body    | dict          | ✅       |             |
| aisdk   | OptionsAisdk1 | ✅       |             |
| variant | str           | ❌       |             |

# OptionsAisdk_1

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| provider | dict | ✅       |             |
| request  | dict | ✅       |             |

# ModelV2InfoVariants

**Properties**

| Name    | Type          | Required | Description |
| :------ | :------------ | :------- | :---------- |
| id\_    | str           | ✅       |             |
| headers | dict          | ✅       |             |
| body    | dict          | ✅       |             |
| aisdk   | VariantsAisdk | ✅       |             |

# VariantsAisdk

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| provider | dict | ✅       |             |
| request  | dict | ✅       |             |

# ModelV2InfoTime

**Properties**

| Name     | Type     | Required | Description |
| :------- | :------- | :------- | :---------- |
| released | Released | ✅       |             |

# Released

# Released_2

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| NAN  | str  | ✅       | "NaN"       |

# Released_3

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| INFINITY | str  | ✅       | "Infinity"  |

# Released_4

**Properties**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| \_INFINITY | str  | ✅       | "-Infinity" |

# Released_5

**Properties**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| INFINITY   | str  | ✅       | "Infinity"  |
| \_INFINITY | str  | ✅       | "-Infinity" |
| NAN        | str  | ✅       | "NaN"       |

# ModelV2InfoCost

**Properties**

| Name   | Type       | Required | Description |
| :----- | :--------- | :------- | :---------- |
| input  | float      | ✅       |             |
| output | float      | ✅       |             |
| cache  | CostCache1 | ✅       |             |
| tier   | CostTier   | ❌       |             |

# CostTier

**Properties**

| Name   | Type      | Required | Description |
| :----- | :-------- | :------- | :---------- |
| type\_ | TierType1 | ✅       |             |
| size   | int       | ✅       |             |

# TierType_1

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| CONTEXT | str  | ✅       | "context"   |

# CostCache_1

**Properties**

| Name  | Type  | Required | Description |
| :---- | :---- | :------- | :---------- |
| read  | float | ✅       |             |
| write | float | ✅       |             |

# ModelV2InfoStatus

**Properties**

| Name       | Type | Required | Description  |
| :--------- | :--- | :------- | :----------- |
| ALPHA      | str  | ✅       | "alpha"      |
| BETA       | str  | ✅       | "beta"       |
| DEPRECATED | str  | ✅       | "deprecated" |
| ACTIVE     | str  | ✅       | "active"     |

# ModelV2InfoLimit

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| context | int  | ✅       |             |
| output  | int  | ✅       |             |
| input   | int  | ❌       |             |

<!-- This file was generated by liblab | https://liblab.com/ -->
