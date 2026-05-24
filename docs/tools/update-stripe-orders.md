
Update the fulfillment status of one or more orders.

## Parameters

<ParamField type="string[]">
  List of order IDs to update (database record IDs)
</ParamField>

<ParamField type="string">
  New status - either "fulfilled" or "pending"
</ParamField>

<ParamField type="boolean">
  Use test mode (default: false)
</ParamField>
