
Run a single shell command on the computer.

Zo can execute shell commands in a bash session, allowing for system operations, script execution, and command-line automation. Use cases include: System automation (execute scripts, manage files, automate tasks), Data processing (process files, run analysis scripts, manage datasets), Environment setup (install packages, configure environments).

## Parameters

**cmd** `string` *required*

The shell command string to execute.

**cwd** `string` (default: /home/workspace)

The working directory in which to execute the command. Defaults to the user's workspace root.

**timeout** `number` (default: 0)

Optional time limit in seconds. When set, the command is terminated if it runs longer than this. Defaults to unbounded.

**description** `string`

Optional short human-readable label for the command (shown in the UI). Does not affect execution.
