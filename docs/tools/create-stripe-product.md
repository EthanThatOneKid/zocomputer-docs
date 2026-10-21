
Create a Stripe product on the user's connected account.

Optionally creates a price and payment link.

## Parameters

**name** `string` *required*

Product name (e.g., "Consulting Session", "E-book Download")

**description** `string`

Product description (optional)

**amount\_cents** `number` (default: -1)

Price in cents (e.g., 1000 for \$10.00). If provided, creates a price and payment link.

**currency** `string` (default: usd)

Currency code (default: "usd")

**recurring** `object`

For subscriptions, provide interval info (e.g., `{"interval": "month", "interval_count": 1}`)

**redirect\_url** `string`

URL to redirect customer to after payment (mutually exclusive with hosted\_confirmation\_message)

**hosted\_confirmation\_message** `string`

Custom message for Stripe's hosted confirmation page (mutually exclusive with redirect\_url)

**testmode** `boolean` (default: false)

Use test mode (default: false). Test mode is useful for testing before going live.
