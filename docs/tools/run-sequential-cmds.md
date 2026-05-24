
Run multiple shell commands sequentially on the computer.

Zo can execute shell commands in a bash session, allowing for system operations, script execution, and command-line automation. Use cases include: System automation (execute scripts, manage files, automate tasks), Data processing (process files, run analysis scripts, manage datasets), Environment setup (install packages, configure environments).

## Parameters

<ParamField type="string[]">
  A list of shell command strings to execute in order.
</ParamField>

<ParamField type="string">
  The working directory in which to execute the commands. Defaults to the user's workspace root.
</ParamField>

<ParamField type="string">
  Optional fleet device name or id. When set, the commands run inside that running device's container instead of the host. The device must be started first. Requires the 'devices:manage' scope.
</ParamField>
