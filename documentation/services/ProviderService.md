# ProviderService

A list of all methods in the `ProviderService` service. Click on the method name to view detailed information about that method.

| Methods                                               | Description                                                                            |
| :---------------------------------------------------- | :------------------------------------------------------------------------------------- |
| [provider_list](#provider_list)                       | Get a list of all available AI providers, including both available and connected ones. |
| [provider_auth](#provider_auth)                       | Retrieve available authentication methods for all AI providers.                        |
| [provider_oauth_authorize](#provider_oauth_authorize) | Start the OAuth authorization flow for a provider.                                     |
| [provider_oauth_callback](#provider_oauth_callback)   | Handle the OAuth callback from a provider after user authorization.                    |

## provider_list

Get a list of all available AI providers, including both available and connected ones.

- HTTP Method: `GET`
- Endpoint: `/provider`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`ProviderListOkResponse`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.provider.provider_list(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## provider_auth

Retrieve available authentication methods for all AI providers.

- HTTP Method: `GET`
- Endpoint: `/provider/auth`

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

result = sdk.provider.provider_auth(
    directory="directory",
    workspace="workspace"
)

print(result)
```

## provider_oauth_authorize

Start the OAuth authorization flow for a provider.

- HTTP Method: `POST`
- Endpoint: `/provider/{providerID}/oauth/authorize`

**Parameters**

| Name         | Type                                                                        | Required | Description       |
| :----------- | :-------------------------------------------------------------------------- | :------- | :---------------- |
| request_body | [ProviderOauthAuthorizeRequest](../models/ProviderOauthAuthorizeRequest.md) | ❌       | The request body. |
| provider_id  | str                                                                         | ✅       |                   |
| directory    | str                                                                         | ❌       |                   |
| workspace    | str                                                                         | ❌       |                   |

**Return Type**

`ProviderAuthAuthorization`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import ProviderOauthAuthorizeRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ProviderOauthAuthorizeRequest(
    method=8.58,
    inputs={}
)

result = sdk.provider.provider_oauth_authorize(
    request_body=request_body,
    provider_id="providerID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## provider_oauth_callback

Handle the OAuth callback from a provider after user authorization.

- HTTP Method: `POST`
- Endpoint: `/provider/{providerID}/oauth/callback`

**Parameters**

| Name         | Type                                                                      | Required | Description       |
| :----------- | :------------------------------------------------------------------------ | :------- | :---------------- |
| request_body | [ProviderOauthCallbackRequest](../models/ProviderOauthCallbackRequest.md) | ❌       | The request body. |
| provider_id  | str                                                                       | ✅       |                   |
| directory    | str                                                                       | ❌       |                   |
| workspace    | str                                                                       | ❌       |                   |

**Return Type**

`bool`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import ProviderOauthCallbackRequest

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

request_body = ProviderOauthCallbackRequest(
    method=6.03,
    code="code"
)

result = sdk.provider.provider_oauth_callback(
    request_body=request_body,
    provider_id="providerID",
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
