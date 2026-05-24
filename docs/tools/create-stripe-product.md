
Create a Stripe product on the user's connected account.

Optionally creates a price and payment link.

## Parameters

<ParamField type="string">
  Product name (e.g., "Consulting Session", "E-book Download")
</ParamField>

<ParamField type="string">
  Product description (optional)
</ParamField>

<ParamField type="number">
  Price in cents (e.g., 1000 for \$10.00). If provided, creates a price and payment link.
</ParamField>

<ParamField type="string">
  Currency code (default: "usd")
</ParamField>

<ParamField type="object">
  For subscriptions, provide interval info (e.g., `{"interval": "month", "interval_count": 1}`)
</ParamField>

<ParamField type="string">
  URL to redirect customer to after payment (mutually exclusive with hosted\_confirmation\_message)
</ParamField>

<ParamField type="string">
  Custom message for Stripe's hosted confirmation page (mutually exclusive with redirect\_url)
</ParamField>

<ParamField type="boolean">
  Use test mode (default: false). Test mode is useful for testing before going live.
</ParamField>
