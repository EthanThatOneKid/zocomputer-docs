
Merge a large or fuzzy rewrite into a text file using a fast apply LLM.

## Parameters

<ParamField type="string">
  Absolute path of the file to edit.
</ParamField>

<ParamField type="string">
  Specify ONLY the precise lines of code that you wish to edit. Use // ... existing code ... for unchanged sections.
</ParamField>

<ParamField type="string">
  Optional. A single sentence in the first person describing what you're changing (e.g. 'I am adding error handling to the fetch call'). Helps disambiguate the edit; omit it for unambiguous edits.
</ParamField>
