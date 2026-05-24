
Create a new price for an existing Stripe product.

Optionally creates a payment link.

## Parameters

<ParamField type="string">
  Existing Stripe product ID (e.g., "prod\_...")
</ParamField>

<ParamField type="number">
  Price in cents (e.g., 2500 for \$25.00)
</ParamField>

<ParamField type="string">
  Currency code (default: "usd")
</ParamField>

<ParamField type="object">
  For subscriptions, provide interval info (e.g., `{"interval": "month", "interval_count": 1}`)
</ParamField>

<ParamField type="boolean">
  Whether to create a payment link for this price (default: true)
</ParamField>

<ParamField type="string">
  URL to redirect customer to after payment (mutually exclusive with hosted\_confirmation\_message)
</ParamField>

<ParamField type="string">
  Custom message for Stripe's hosted confirmation page (mutually exclusive with redirect\_url)
</ParamField>

<ParamField type="boolean">
  Use test mode (default: false)
</ParamField>
