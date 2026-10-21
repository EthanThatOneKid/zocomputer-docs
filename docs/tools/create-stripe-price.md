
Create a new price for an existing Stripe product.

Optionally creates a payment link.

## Parameters

**product\_id** `string` *required*

Existing Stripe product ID (e.g., "prod\_...")

**amount\_cents** `number` *required*

Price in cents (e.g., 2500 for \$25.00)

**currency** `string` (default: usd)

Currency code (default: "usd")

**recurring** `object`

For subscriptions, provide interval info (e.g., `{"interval": "month", "interval_count": 1}`)

**create\_payment\_link** `boolean` (default: true)

Whether to create a payment link for this price (default: true)

**redirect\_url** `string`

URL to redirect customer to after payment (mutually exclusive with hosted\_confirmation\_message)

**hosted\_confirmation\_message** `string`

Custom message for Stripe's hosted confirmation page (mutually exclusive with redirect\_url)

**testmode** `boolean` (default: false)

Use test mode (default: false)
