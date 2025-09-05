#!/usr/bin/env bash
#
# Comments are preceded by a # sign
# Use them to explain the purpose of your code
## Note you can also start your scirpt with the #!/usr/bin/bash -xv for verbose debugging
## https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_02_03.html

# Set string mode. Cuases shell to exit when a command fails
set -e

# Enables printing of shell input lines as they are read; toggle to turn on or off
set -v

# Enables print of command traces before executing command; toggle to turn on or off
set -x

# Set a variable
variable="one"

echo "This is a script with a variable: $variable"