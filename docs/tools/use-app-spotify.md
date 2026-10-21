
Use a tool to work with the user's connected Spotify account.

## Parameters

**tool\_name** `string` *required*

Exact tool name from `list_app_tools`, or "spotify-search" to search for music

**configured\_props** `object` *required*

Props for the action. For search: `{"type": "track|album|artist|playlist"}`. For actions: see list\_app\_tools

**search\_query** `string`

Search string (required when tool\_name="spotify-search"), e.g., "Drake Hotline Bling"
