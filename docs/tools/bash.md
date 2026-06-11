
Run a single shell command on the computer.

Zo can execute shell commands in a bash session, allowing for system operations, script execution, and command-line automation. Use cases include: System automation (execute scripts, manage files, automate tasks), Data processing (process files, run analysis scripts, manage datasets), Environment setup (install packages, configure environments).

## Parameters

<ParamField type="string">
  The shell command string to execute.
</ParamField>

<ParamField type="string">
  The working directory in which to execute the command. Defaults to the user's workspace root.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, the command runs inside that running device's container instead of the host (e.g. `psql -c 'SELECT 1'` against a Postgres device). The device must be started first. Requires the 'devices:manage' scope.
</ParamField>

<ParamField type="string">
  Optional Zo App slug or id. When set, the command runs inside that Zo App's sandbox instead of the host — the app is a separate computer you have a shell on. Mutually exclusive with 'device'. The app server lives at /zo-app/server.ts (Bun); write private/user-specific data under /user-data (ZO\_APP\_DATA\_DIR), which is excluded from forks. Requires the 'apps:shell' scope.
</ParamField>

<ParamField type="number">
  Optional time limit in seconds. When set, the command is terminated if it runs longer than this. Defaults to unbounded.
</ParamField>

<ParamField type="string">
  Optional short human-readable label for the command (shown in the UI). Does not affect execution.
</ParamField>
