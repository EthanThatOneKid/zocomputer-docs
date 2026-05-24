
List managed User Services running on your Zo server.

A User Service is an automatically managed process on Zo Computer. The list includes both public HTTP/TCP services and process-only managed services. `mode` is the canonical service type. HTTP services may include `custom_domains` with each domain, verification status, active flag, CNAME target, and timestamps. Process-only services have no public URL or TCP address and still report `protocol="tcp"` plus `local_port=0` for legacy compatibility, but they may still be listening on localhost if configured to do so.
