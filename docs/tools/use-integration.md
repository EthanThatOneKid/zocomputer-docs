
Run an action on a connected long-tail Pipedream catalog app.

## Parameters

**app\_slug** `string` *required*

The catalog app slug (from `search_app_catalog`).

**tool\_name** `string` *required*

Exact action name returned by `list_app_tools`.

**configured\_props** `object` *required*

The configured props for the action (e.g., `{"collectionId": "abc123", "name": "New item"}`).

**email** `string`

Optional email address to select a specific connected account.
