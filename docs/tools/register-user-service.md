
Register a managed User Service on your Zo server.

A User Service is an automatically managed process on Zo Computer.

Service modes:

* "http" — public or private web service with a URL endpoint
* "tcp" — public TCP service with a host:port endpoint
* "process" — supervised background process with no public endpoint (workers, schedulers, bots, sync loops, or internal-only localhost services like Postgres bound to 127.0.0.1)

Use "process" for anything that doesn't need to be reached from outside the host. Process-only services do not count toward hosted-service limits.

Visibility (HTTP only):

* public (default): reachable at \*.zocomputer.io without auth
* private: reachable at \*.zo.computer, requires the owner to sign in. Private services are gated by a feature flag and not available on all accounts.
* TCP services are always public. Process services have no endpoint.

## Parameters

<ParamField type="string">
  Unique label (per host) for the service. Lowercase and hyphens allowed. e.g. "my-web-app".
</ParamField>

<ParamField type="string">
  "http", "tcp", or "process". Use "process" for internal-only localhost services or non-network background processes.
</ParamField>

<ParamField type="number">
  Localhost port to expose (1-65535, injected as PORT env var). Required for "http" and "tcp". Omit for "process".
</ParamField>

<ParamField type="string">
  Optional command to run the service, e.g. "python3 -m http.server %(ENV\_PORT)s". If omitted, only the tunnel is managed.
</ParamField>

<ParamField type="string">
  Working directory for the service entrypoint. Defaults to /home/workspace.
</ParamField>

<ParamField type="object">
  Optional environment variables. PORT will be overridden for networked services and is not set for process-only services.
</ParamField>

<ParamField type="string">
  Whether the service is publicly accessible (defaults to true). Only applies to HTTP services — set to false for a private service at \*.zo.computer that requires sign-in. TCP services are always public; process services have no endpoint.
</ParamField>
