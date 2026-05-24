
Edit an existing route's code by supplying only the changed sections.

Preferred for edits to existing routes. Use `// ... existing code ...` as a placeholder for unchanged regions; the partial edit is merged against the current route code.

## Parameters

<ParamField type="string">
  Route path of the existing route to edit, e.g. '/about' or '/api/hello'.
</ParamField>

<ParamField type="string">
  Partial edit — only the changed sections. Use '// ... existing code ...' for unchanged parts.
</ParamField>

<ParamField type="string">
  A sentence describing what the edit does, to help disambiguate.
</ParamField>

<ParamField type="string">
  Optional visibility override for page routes. Omit to preserve current visibility. API routes are always public.
</ParamField>
