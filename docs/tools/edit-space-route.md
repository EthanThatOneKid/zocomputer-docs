
Edit an existing route's code with exact edit operations, the same ones `edit_file` uses.

Preferred for edits to existing routes, including the built-in starter homepage at `/`. Match blocks are copied exactly from the current route code (see `get_space_route`).

## Parameters

**path** `string` *required*

Route path of the existing route to edit, e.g. '/about' or '/api/hello'.

**operations** `object[]` *required*

Edit operations applied in order: replace\_block, insert\_after, insert\_before, delete\_block, append\_line. Same schema as `edit_file`.

**public** `string`

Optional visibility override for page routes. Omit to preserve current visibility. API routes are always public.
