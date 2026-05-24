
Run an action on a connected long-tail Pipedream catalog app.

## Parameters

<ParamField type="string">
  The catalog app slug (from `search_app_catalog`).
</ParamField>

<ParamField type="string">
  Exact action name returned by `list_app_tools`.
</ParamField>

<ParamField type="object">
  The configured props for the action (e.g., `{"collectionId": "abc123", "name": "New item"}`).
</ParamField>

<ParamField type="string">
  Optional email address to select a specific connected account.
</ParamField>
