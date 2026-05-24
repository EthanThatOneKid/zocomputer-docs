
Use your own domain for public sites and services

You can connect your own domain (like `blog.example.com`) to any public site or service running on your Zo. This gives your projects a professional, branded URL instead of the default `yoursite-handle.zocomputer.io`.

<Info>
  Custom domains are available on paid plans. See [pricing](https://zo.computer/pricing) for plan limits.
</Info>

## How it works

When you add a custom domain, we:

1. Register your domain with Cloudflare's edge network
2. Automatically provision and manage a TLS certificate for HTTPS
3. Route all traffic from your domain to your service

The entire process typically completes within 15 minutes after you've configured your DNS.

## Adding a custom domain

<Steps>
  <Step title="Open Services">
    Navigate to **Sites** → **Services** in your Zo and find the service you want to add a domain to.
  </Step>

  <Step title="Add domain">
    Click on the service to open its details panel, then click **Add** in the Custom Domains section. Enter your domain (e.g., `blog.example.com`).
  </Step>

  <Step title="Configure DNS">
    Add a CNAME record in your domain's DNS settings:

    | Type  | Name                           | Target                |
    | ----- | ------------------------------ | --------------------- |
    | CNAME | `blog` (or `@` for subdomains) | `cname.zocomputer.io` |

    <Tip>
      If you're using Cloudflare for your domain, set the proxy status to **DNS only** (gray cloud icon) when adding the CNAME record.
    </Tip>
  </Step>

  <Step title="Wait for verification">
    Once your CNAME is configured, Zo will automatically detect it and provision your TLS certificate. This usually takes 1-15 minutes.
  </Step>
</Steps>

## Domain status

Your custom domain goes through these states:

| Status        | Description                                       |
| ------------- | ------------------------------------------------- |
| Pending CNAME | Waiting for you to add the CNAME record           |
| Pending SSL   | CNAME verified, TLS certificate being provisioned |
| Active        | Domain is live and serving traffic                |
| Error         | Something went wrong (check DNS configuration)    |

You can click **Verify now** to manually trigger a verification check.

## Limitations

* **Subdomains only**: You must use a subdomain like `blog.example.com` or `app.example.com`. Apex domains (like `example.com`) are not supported because they cannot have CNAME records.

* **Plan limits**: The number of custom domains you can add depends on your plan:

  | Plan  | Custom Domains |
  | ----- | -------------- |
  | Free  | 0              |
  | Basic | 3              |
  | Pro   | 5              |
  | Ultra | 10             |

* **One domain per service**: Each custom domain can only point to one service at a time. You can transfer a domain to a different service without re-verification.

## Troubleshooting

<AccordionGroup>
  <Accordion title="Domain stuck on 'Pending CNAME'">
    DNS changes can take time to propagate. Wait a few minutes and click **Verify now**. You can also check your CNAME record using a DNS lookup tool:

    ```bash theme={null}
    dig CNAME blog.example.com
    ```

    The result should show `cname.zocomputer.io` as the target.
  </Accordion>

  <Accordion title="Domain stuck on 'Pending SSL'">
    TLS certificate provisioning typically takes 1-15 minutes. If it's been longer than an hour, check:

    1. **CAA records**: If your domain has CAA DNS records, ensure they allow `digicert.com` and `letsencrypt.org`.
    2. **Conflicting proxies**: If your domain is already proxied through another Cloudflare zone, you may need to disable that proxy first.
  </Accordion>

  <Accordion title="SSL certificate errors in browser">
    If you see certificate warnings after the domain shows as Active:

    1. Wait a few more minutes for certificate propagation
    2. Try a hard refresh (Cmd+Shift+R or Ctrl+Shift+R)
    3. Try an incognito/private browser window
  </Accordion>

  <Accordion title="Domain was working but now shows errors">
    If your domain stops working:

    1. Verify the CNAME record is still configured correctly
    2. Check that your service is still running
    3. Remove and re-add the domain if the issue persists
  </Accordion>
</AccordionGroup>

## Removing a custom domain

To remove a custom domain, expand the service details, find the domain in the Custom Domains section, and click the delete button. The domain will be immediately removed and traffic will stop routing to your service.

<Warning>
  If you delete a service, all custom domains attached to it are automatically removed.
</Warning>
