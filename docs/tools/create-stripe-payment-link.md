
Create a payment link for an existing Stripe price.

## Parameters

**price\_id** `string` *required*

Existing Stripe price ID (e.g., "price\_...")

**redirect\_url** `string`

URL to redirect customer to after payment (mutually exclusive with hosted\_confirmation\_message)

**hosted\_confirmation\_message** `string`

Custom message for Stripe's hosted confirmation page (mutually exclusive with redirect\_url)

**testmode** `boolean` (default: false)

Use test mode (default: false)
