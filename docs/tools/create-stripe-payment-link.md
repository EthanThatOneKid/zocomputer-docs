
Create a payment link for an existing Stripe price.

## Parameters

<ParamField type="string">
  Existing Stripe price ID (e.g., "price\_...")
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
