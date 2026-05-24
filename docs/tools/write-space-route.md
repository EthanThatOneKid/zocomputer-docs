
Create a new route or fully rewrite an existing one in the user's zo.space site.

Use for new routes or full rewrites. For edits to an existing route, prefer `edit_space_route` — it sends only the changed sections instead of the entire file.

## Parameters

<ParamField type="string">
  Route path starting with '/'. Use '/' for custom home page.
</ParamField>

<ParamField type="string">
  Either 'api' or 'page'.
</ParamField>

<ParamField type="string">
  Full source code. Required — must be valid TypeScript/TSX with a default export.
</ParamField>

<ParamField type="string">
  Whether the route is publicly accessible. API routes are always public. For pages, omit to preserve current visibility on updates; defaults to False for new pages (True for homepage).
</ParamField>
