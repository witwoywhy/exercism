#!/usr/bin/env bash

main () {
    result=$(echo "$1" | tr -c "[:alpha:]'" " " | awk '{ for(i=1;i<=NF;i++) printf "%s", substr($i,1,1)}')
    echo "${result^^}"
}

main "$@"