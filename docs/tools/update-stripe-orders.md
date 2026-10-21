
Update the fulfillment status of one or more orders.

## Parameters

**order\_ids** `string[]` *required*

List of order IDs to update (database record IDs)

**fulfillment\_status** `string` *required*

New status - either "fulfilled" or "pending"

**testmode** `boolean` (default: false)

Use test mode (default: false)
