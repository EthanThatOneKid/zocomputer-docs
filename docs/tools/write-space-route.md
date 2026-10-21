
Create a new route or fully rewrite an existing one in the user's zo.space site.

Use for new routes or full rewrites. For edits to an existing route, prefer `edit_space_route` — it applies exact edit operations instead of resending the entire file.

## Parameters

**path** `string` *required*

Route path starting with '/'. Use '/' for custom home page.

**route\_type** `string` *required*

Either 'api' or 'page'.

**code** `string`

Full source code. Required — must be valid TypeScript/TSX with a default export.

**public** `string`

Whether the route is publicly accessible. API routes are always public. For pages, omit to preserve current visibility on updates; defaults to False for new pages (True for homepage).
