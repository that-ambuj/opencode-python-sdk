# SyncEventSessionUpdated

**Properties**

| Name         | Type                               | Required | Description |
| :----------- | :--------------------------------- | :------- | :---------- |
| type\_       | SyncEventSessionUpdatedType        | ✅       |             |
| name         | SyncEventSessionUpdatedName        | ✅       |             |
| id\_         | str                                | ✅       |             |
| seq          | float                              | ✅       |             |
| aggregate_id | SyncEventSessionUpdatedAggregateId | ✅       |             |
| data         | SyncEventSessionUpdatedData        | ✅       |             |

# SyncEventSessionUpdatedType

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| SYNC | str  | ✅       | "sync"      |

# SyncEventSessionUpdatedName

**Properties**

| Name            | Type | Required | Description         |
| :-------------- | :--- | :------- | :------------------ |
| SESSIONUPDATED1 | str  | ✅       | "session.updated.1" |

# SyncEventSessionUpdatedAggregateId

**Properties**

| Name      | Type | Required | Description |
| :-------- | :--- | :------- | :---------- |
| SESSIONID | str  | ✅       | "sessionID" |

# SyncEventSessionUpdatedData

**Properties**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| session_id | str  | ✅       |             |
| info       | Info | ✅       |             |

# Info

**Properties**

| Name         | Type                                      | Required | Description |
| :----------- | :---------------------------------------- | :------- | :---------- |
| id\_         | str                                       | ❌       |             |
| slug         | str                                       | ❌       |             |
| project_id   | str                                       | ❌       |             |
| workspace_id | str                                       | ❌       |             |
| directory    | str                                       | ❌       |             |
| path         | str                                       | ❌       |             |
| parent_id    | str                                       | ❌       |             |
| summary      | InfoSummary                               | ❌       |             |
| cost         | float                                     | ❌       |             |
| tokens       | InfoTokens                                | ❌       |             |
| share        | InfoShare                                 | ❌       |             |
| title        | str                                       | ❌       |             |
| agent        | str                                       | ❌       |             |
| model        | InfoModel                                 | ❌       |             |
| version      | str                                       | ❌       |             |
| time         | InfoTime                                  | ❌       |             |
| permission   | List[[PermissionRule](PermissionRule.md)] | ❌       |             |
| revert       | InfoRevert                                | ❌       |             |

# InfoSummary

**Properties**

| Name      | Type                                          | Required | Description |
| :-------- | :-------------------------------------------- | :------- | :---------- |
| additions | float                                         | ✅       |             |
| deletions | float                                         | ✅       |             |
| files     | float                                         | ✅       |             |
| diffs     | List[[SnapshotFileDiff](SnapshotFileDiff.md)] | ❌       |             |

# InfoTokens

**Properties**

| Name      | Type         | Required | Description |
| :-------- | :----------- | :------- | :---------- |
| input     | float        | ✅       |             |
| output    | float        | ✅       |             |
| reasoning | float        | ✅       |             |
| cache     | TokensCache5 | ✅       |             |

# TokensCache_5

**Properties**

| Name  | Type  | Required | Description |
| :---- | :---- | :------- | :---------- |
| read  | float | ✅       |             |
| write | float | ✅       |             |

# InfoShare

**Properties**

| Name | Type | Required | Description |
| :--- | :--- | :------- | :---------- |
| url  | str  | ❌       |             |

# InfoModel

**Properties**

| Name        | Type | Required | Description |
| :---------- | :--- | :------- | :---------- |
| id\_        | str  | ✅       |             |
| provider_id | str  | ✅       |             |
| variant     | str  | ❌       |             |

# InfoTime

**Properties**

| Name       | Type  | Required | Description |
| :--------- | :---- | :------- | :---------- |
| created    | int   | ❌       |             |
| updated    | int   | ❌       |             |
| compacting | int   | ❌       |             |
| archived   | float | ❌       |             |

# InfoRevert

**Properties**

| Name       | Type | Required | Description |
| :--------- | :--- | :------- | :---------- |
| message_id | str  | ✅       |             |
| part_id    | str  | ❌       |             |
| snapshot   | str  | ❌       |             |
| diff       | str  | ❌       |             |

<!-- This file was generated by liblab | https://liblab.com/ -->
