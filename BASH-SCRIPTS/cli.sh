#!/usr/bin/env bash
# Output looks like this
#
# Run script:
#       .cli.sh --count 5 --phrase "hello world"
# hello world
# hello world
# hello world
# hello world
# hello world

## A. Does the work
# Generate phrase "N" times
phrase_generator() {
    local count="$1"
    local phrase="$2"

    for ((i=0; i<count; i++)); do 
        echo "$phrase"
    done
}

# Defaul values (optional)
COUNT=0
PHRASE=""

#Parse options
while getopts ":c:p:" opt; do
  case $opt in
    c) COUNT="$OPTARG" ;;
    p) PHRASE="$OPTARG" ;;
    \?) echo "Invalid option: -$OPTARG" >&2; exit 1 ;;
    :)  echo "Option -$OPTARG requires an argument." >&2; exit 1 ;;
  esac
done

# Validate
if [[ -z "$COUNT" || -z "$PHRASE" ]]; then
    echo "Usage: $0 -c <count> -p <phrase>"
    exit 1
fi

## C. Pass parsed input to function and run everthing
# Run Program
phrase_generator "${COUNT}" "${PHRASE}"

## Code from lesson

## B Parses input for the CLI
# Parse options
#while [[ $# -gt 1 ]]
#do
#key="$1"

#case $key in
#    -c|--count)
#    COUNT="$2"
#    shift
#    ;;
#    -p|--phrase)
#    PHRASE="$2"
#    shift
#    ;;
#esac
#shift
#done

## B Parses input for the CLI
# Parse options
#while [[ $# -gt 1 ]]
#do
#key="$1"

#case $key in
#    COUNT="$2"
#    shift
#    ;;
#    -p|--phrase)
#    PHRASE="$2"
#    shift
#    ;;
#esac
#shift
#done
