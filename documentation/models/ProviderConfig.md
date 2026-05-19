# ProviderConfig

**Properties**

| Name      | Type                  | Required | Description |
| :-------- | :-------------------- | :------- | :---------- |
| api       | str                   | ❌       |             |
| name      | str                   | ❌       |             |
| env       | List[str]             | ❌       |             |
| id\_      | str                   | ❌       |             |
| npm       | str                   | ❌       |             |
| whitelist | List[str]             | ❌       |             |
| blacklist | List[str]             | ❌       |             |
| options   | ProviderConfigOptions | ❌       |             |
| models    | dict                  | ❌       |             |

# ProviderConfigOptions

**Properties**

| Name           | Type    | Required | Description                                                                                                            |
| :------------- | :------ | :------- | :--------------------------------------------------------------------------------------------------------------------- |
| api_key        | str     | ❌       |                                                                                                                        |
| base_url       | str     | ❌       |                                                                                                                        |
| enterprise_url | str     | ❌       |                                                                                                                        |
| set_cache_key  | bool    | ❌       |                                                                                                                        |
| timeout        | Timeout | ❌       | Timeout in milliseconds for requests to this provider. Default is 300000 (5 minutes). Set to false to disable timeout. |
| chunk_timeout  | int     | ❌       |                                                                                                                        |

# Timeout

Timeout in milliseconds for requests to this provider. Default is 300000 (5 minutes). Set to false to disable timeout.

# Timeout_2

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| FALSE | str  | ✅       | "false"     |

# Models

**Properties**

| Name         | Type              | Required | Description                    |
| :----------- | :---------------- | :------- | :----------------------------- |
| id\_         | str               | ❌       |                                |
| name         | str               | ❌       |                                |
| family       | str               | ❌       |                                |
| release_date | str               | ❌       |                                |
| attachment   | bool              | ❌       |                                |
| reasoning    | bool              | ❌       |                                |
| temperature  | bool              | ❌       |                                |
| tool_call    | bool              | ❌       |                                |
| interleaved  | ModelsInterleaved | ❌       |                                |
| cost         | ModelsCost        | ❌       |                                |
| limit        | ModelsLimit       | ❌       |                                |
| modalities   | Modalities        | ❌       |                                |
| experimental | bool              | ❌       |                                |
| status       | ModelsStatus      | ❌       |                                |
| provider     | ModelsProvider    | ❌       |                                |
| options      | dict              | ❌       |                                |
| headers      | dict              | ❌       |                                |
| variants     | dict              | ❌       | Variant-specific configuration |

# ModelsInterleaved

# Interleaved_1

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| TRUE | str  | ✅       | "true"      |

# Interleaved_2_1

**Properties**

| Name  | Type               | Required | Description |
| :---- | :----------------- | :------- | :---------- |
| field | Interleaved2Field1 | ✅       |             |

# Interleaved_2Field_1

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGCONTENT | str  | ✅       | "reasoning_content" |
| REASONINGDETAILS | str  | ✅       | "reasoning_details" |

# ModelsCost

**Properties**

| Name              | Type            | Required | Description |
| :---------------- | :-------------- | :------- | :---------- |
| input             | float           | ✅       |             |
| output            | float           | ✅       |             |
| cache_read        | float           | ❌       |             |
| cache_write       | float           | ❌       |             |
| context_over_200k | ContextOver200k | ❌       |             |

# ContextOver_200k

**Properties**

| Name        | Type  | Required | Description |
| :---------- | :---- | :------- | :---------- |
| input       | float | ✅       |             |
| output      | float | ✅       |             |
| cache_read  | float | ❌       |             |
| cache_write | float | ❌       |             |

# ModelsLimit

**Properties**

| Name    | Type  | Required | Description |
| :------ | :---- | :------- | :---------- |
| context | float | ✅       |             |
| output  | float | ✅       |             |
| input   | float | ❌       |             |

# Modalities

**Properties**

| Name   | Type                   | Required | Description |
| :----- | :--------------------- | :------- | :---------- |
| input  | List[ModalitiesInput]  | ✅       |             |
| output | List[ModalitiesOutput] | ✅       |             |

# ModalitiesInput

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| TEXT  | str  | ✅       | "text"      |
| AUDIO | str  | ✅       | "audio"     |
| IMAGE | str  | ✅       | "image"     |
| VIDEO | str  | ✅       | "video"     |
| PDF   | str  | ✅       | "pdf"       |

# ModalitiesOutput

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| TEXT  | str  | ✅       | "text"      |
| AUDIO | str  | ✅       | "audio"     |
| IMAGE | str  | ✅       | "image"     |
| VIDEO | str  | ✅       | "video"     |
| PDF   | str  | ✅       | "pdf"       |

# ModelsStatus

**Properties**

| Name       | Type | Required | Description  |
| :--------- | :--- | :------- | :----------- |
| ALPHA      | str  | ✅       | "alpha"      |
| BETA       | str  | ✅       | "beta"       |
| DEPRECATED | str  | ✅       | "deprecated" |
| ACTIVE     | str  | ✅       | "active"     |

# ModelsProvider

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| npm  | str  | ❌       |             |
| api  | str  | ❌       |             |

# ModelsVariants

**Properties**

| Name     | Type | Required | Description |
| :------- | :--- | :------- | :---------- |
| disabled | bool | ❌       |             |

<!-- This file was generated by liblab | https://liblab.com/ -->
