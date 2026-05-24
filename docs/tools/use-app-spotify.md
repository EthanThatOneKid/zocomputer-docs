
Use a tool to work with the user's connected Spotify account.

## Parameters

<ParamField type="string">
  Exact tool name from `list_app_tools`, or "spotify-search" to search for music
</ParamField>

<ParamField type="object">
  Props for the action. For search: `{"type": "track|album|artist|playlist"}`. For actions: see list\_app\_tools
</ParamField>

<ParamField type="string">
  Search string (required when tool\_name="spotify-search"), e.g., "Drake Hotline Bling"
</ParamField>
