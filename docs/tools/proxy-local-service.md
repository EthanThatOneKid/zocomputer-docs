
Proxy a local service to a public endpoint using a TCP tunnel, similar to ngrok.

Creates a tunnel from the specified local port to a public endpoint and forwards all TCP traffic through it (not just HTTP). Note that the created tunnel is temporary and intended for preview purposes. It is accessed through HTTP, not HTTPS, and it will be discarded eventually, so you cannot rely on it for permanent access or "production" use cases.

## Parameters

<ParamField type="number">
  Local port to proxy (must be between 1024-65535).
</ParamField>
