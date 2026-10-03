
Edit a text file using a sequence of precise edit operations.

Each item requires `operation` and its fields.

## Parameters

<ParamField type="string">
  The absolute path to the file to edit.
</ParamField>

<ParamField type="object[]">
  A list of operations. Each item needs an operation name and its fields: replace\_block (search\_block, replace\_block), insert\_after (after\_block, insert\_block), insert\_before (before\_block, insert\_block), delete\_block (delete\_block), or append\_line (line\_content).
</ParamField>
