
Update a managed user service on your Zo server. Only specify the fields you want to change; omitted fields keep their existing values. Always restarts the service process.

A User Service is an automatically managed process on Zo Computer.

Service modes:

* "http" — public or private web service with a URL endpoint
* "tcp" — public TCP service with a host:port endpoint
* "process" — supervised background process with no public endpoint

Visibility (HTTP only):

* public: reachable at \*.zocomputer.io without auth
* private: reachable at \*.zo.computer, requires a member of the workspace to sign in.
* TCP services are always public. Process services have no endpoint.

You can change a service's mode in place instead of deleting and recreating it.

## Parameters

**service\_id** `string` *required*

Identifier of the service to update.

**label** `string`

Optional. Unique label for the service (lowercase and hyphens).

**mode** `string`

Optional new mode: "http", "tcp", or "process".

**local\_port** `number` (default: -1)

Optional. Localhost port for networked services (injected as PORT env var). Required when switching from "process" to "http" or "tcp".

**entrypoint** `string`

Optional. Command to run the service.

**workdir** `string`

Optional. Working directory for the entrypoint.

**env\_vars** `object`

Optional. Environment variables. PORT will be overridden for networked services and is not set for process-only services.

**public** `string`

Optional. Pass true to make the service public, false to make it private (HTTP only). Omit to leave unchanged. Private services are reachable at \*.zo.computer and require sign-in.

**enabled** `string`

Optional. Pass "false" to pause the service (stop it running, keep its config/URL/quota) or "true" to resume it. Omit to leave the paused/running state unchanged.
