
Interact with the current page using an AI agent.

## Parameters

<ParamField type="string">
  Specific task with explicit stop condition. Name elements in quotes.
</ParamField>

<ParamField type="object">
  Optional flat JSON schema for structured output. Top-level type must be 'object' with 'properties' (dict) and 'required' (list of keys). Each property is either a scalar (type='string'|'number'|'boolean', plus optional 'enum' list for strings) or an array (with 'items' that is a scalar or a flat object whose own properties are scalars). No deeper nesting. Omit when no structured output is needed.
</ParamField>
