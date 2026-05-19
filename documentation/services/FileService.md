# FileService

A list of all methods in the `FileService` service. Click on the method name to view detailed information about that method.

| Methods                       | Description                                                                    |
| :---------------------------- | :----------------------------------------------------------------------------- |
| [find_text](#find_text)       | Search for text patterns across files in the project using ripgrep.            |
| [find_files](#find_files)     | Search for files or directories by name or pattern in the project directory.   |
| [find_symbols](#find_symbols) | Search for workspace symbols like functions, classes, and variables using LSP. |
| [file_list](#file_list)       | List files and directories in a specified path.                                |
| [file_read](#file_read)       | Read the content of a specified file.                                          |
| [file_status](#file_status)   | Get the git status of all files in the project.                                |

## find_text

Search for text patterns across files in the project using ripgrep.

- HTTP Method: `GET`
- Endpoint: `/find`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| pattern   | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[FindTextOkResponse]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.find_text(
    pattern="pattern",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## find_files

Search for files or directories by name or pattern in the project directory.

- HTTP Method: `GET`
- Endpoint: `/find/file`

**Parameters**

| Name      | Type                                        | Required | Description |
| :-------- | :------------------------------------------ | :------- | :---------- |
| query     | str                                         | ✅       |             |
| directory | str                                         | ❌       |             |
| workspace | str                                         | ❌       |             |
| dirs      | [Dirs](../models/Dirs.md)                   | ❌       |             |
| type\_    | [FindFilesType](../models/FindFilesType.md) | ❌       |             |
| limit     | int                                         | ❌       |             |

**Return Type**

`List[str]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode
from opencode_api.models import Dirs, FindFilesType

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.find_files(
    query="query",
    directory="directory",
    workspace="workspace",
    dirs="true",
    type_="file",
    limit=84
)

print(result)
```

## find_symbols

Search for workspace symbols like functions, classes, and variables using LSP.

- HTTP Method: `GET`
- Endpoint: `/find/symbol`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| query     | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[Symbol]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.find_symbols(
    query="query",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## file_list

List files and directories in a specified path.

- HTTP Method: `GET`
- Endpoint: `/file`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| path      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[FileNode]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.file_list(
    path="path",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## file_read

Read the content of a specified file.

- HTTP Method: `GET`
- Endpoint: `/file/content`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| path      | str  | ✅       |             |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`FileContent`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.file_read(
    path="path",
    directory="directory",
    workspace="workspace"
)

print(result)
```

## file_status

Get the git status of all files in the project.

- HTTP Method: `GET`
- Endpoint: `/file/status`

**Parameters**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| directory | str  | ❌       |             |
| workspace | str  | ❌       |             |

**Return Type**

`List[File]`

**Example Usage Code Snippet**

```python
from opencode_api import Opencode

sdk = Opencode(
    access_token="YOUR_ACCESS_TOKEN",
    timeout=10000
)

result = sdk.file.file_status(
    directory="directory",
    workspace="workspace"
)

print(result)
```

<!-- This file was generated by liblab | https://liblab.com/ -->
