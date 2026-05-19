# Model

**Properties**

| Name         | Type              | Required | Description |
| :----------- | :---------------- | :------- | :---------- |
| id\_         | str               | ✅       |             |
| provider_id  | str               | ✅       |             |
| api          | Api               | ✅       |             |
| name         | str               | ✅       |             |
| capabilities | ModelCapabilities | ✅       |             |
| cost         | ModelCost         | ✅       |             |
| limit        | ModelLimit        | ✅       |             |
| status       | ModelStatus       | ✅       |             |
| options      | dict              | ✅       |             |
| headers      | dict              | ✅       |             |
| release_date | str               | ✅       |             |
| family       | str               | ❌       |             |
| variants     | dict              | ❌       |             |

# Api

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| id\_ | str  | ✅       |             |
| url  | str  | ✅       |             |
| npm  | str  | ✅       |             |

# ModelCapabilities

**Properties**

| Name        | Type                    | Required | Description |
| :---------- | :---------------------- | :------- | :---------- |
| temperature | bool                    | ✅       |             |
| reasoning   | bool                    | ✅       |             |
| attachment  | bool                    | ✅       |             |
| toolcall    | bool                    | ✅       |             |
| input       | CapabilitiesInput       | ✅       |             |
| output      | CapabilitiesOutput      | ✅       |             |
| interleaved | CapabilitiesInterleaved | ✅       |             |

# CapabilitiesInput

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| text  | bool | ✅       |             |
| audio | bool | ✅       |             |
| image | bool | ✅       |             |
| video | bool | ✅       |             |
| pdf   | bool | ✅       |             |

# CapabilitiesOutput

**Properties**

| Name  | Type | Required | Description |
| :---- | :--- | :------- | :---------- |
| text  | bool | ✅       |             |
| audio | bool | ✅       |             |
| image | bool | ✅       |             |
| video | bool | ✅       |             |
| pdf   | bool | ✅       |             |

# CapabilitiesInterleaved

# Interleaved_2_2

**Properties**

| Name  | Type               | Required | Description |
| :---- | :----------------- | :------- | :---------- |
| field | Interleaved2Field2 | ✅       |             |

# Interleaved_2Field_2

**Properties**

| Name             | Type | Required | Description         |
| :--------------- | :--- | :------- | :------------------ |
| REASONINGCONTENT | str  | ✅       | "reasoning_content" |
| REASONINGDETAILS | str  | ✅       | "reasoning_details" |

# ModelCost

**Properties**

| Name                   | Type                 | Required | Description |
| :--------------------- | :------------------- | :------- | :---------- |
| input                  | float                | ✅       |             |
| output                 | float                | ✅       |             |
| cache                  | CostCache2           | ✅       |             |
| tiers                  | List[Tiers]          | ❌       |             |
| experimental_over200_k | ExperimentalOver200K | ❌       |             |

# CostCache_2

**Properties**

| Name  | Type  | Required | Description |
| :---- | :---- | :------- | :---------- |
| read  | float | ✅       |             |
| write | float | ✅       |             |

# Tiers

**Properties**

| Name   | Type       | Required | Description |
| :----- | :--------- | :------- | :---------- |
| input  | float      | ✅       |             |
| output | float      | ✅       |             |
| cache  | TiersCache | ✅       |             |
| tier   | TiersTier  | ✅       |             |

# TiersCache

**Properties**

| Name  | Type  | Required | Description |
| :---- | :---- | :------- | :---------- |
| read  | float | ✅       |             |
| write | float | ✅       |             |

# TiersTier

**Properties**

| Name   | Type      | Required | Description |
| :----- | :-------- | :------- | :---------- |
| type\_ | TierType2 | ✅       |             |
| size   | float     | ✅       |             |

# TierType_2

**Properties**

| Name    | Type | Required | Description |
| :------ | :--- | :------- | :---------- |
| CONTEXT | str  | ✅       | "context"   |

# ExperimentalOver200K

**Properties**

| Name   | Type                      | Required | Description |
| :----- | :------------------------ | :------- | :---------- |
| input  | float                     | ✅       |             |
| output | float                     | ✅       |             |
| cache  | ExperimentalOver200KCache | ✅       |             |

# ExperimentalOver200KCache

**Properties**

| Name  | Type  | Required | Description |
| :---- | :---- | :------- | :---------- |
| read  | float | ✅       |             |
| write | float | ✅       |             |

# ModelLimit

**Properties**

| Name    | Type  | Required | Description |
| :------ | :---- | :------- | :---------- |
| context | float | ✅       |             |
| output  | float | ✅       |             |
| input   | float | ❌       |             |

# ModelStatus

**Properties**

| Name       | Type | Required | Description  |
| :--------- | :--- | :------- | :----------- |
| ALPHA      | str  | ✅       | "alpha"      |
| BETA       | str  | ✅       | "beta"       |
| DEPRECATED | str  | ✅       | "deprecated" |
| ACTIVE     | str  | ✅       | "active"     |

<!-- This file was generated by liblab | https://liblab.com/ -->
