#!/usr/bin/env bash

main () {
    if [[ "$#" -lt 2 ]]; then
        echo "Usage: $0 <string1> <string2>"
        exit 1
    fi

    arg1=$1
    arg2=$2

    if [[ "${#arg1}" -ne "${#arg2}" ]]; then
        echo "strands must be of equal length"
        exit 1
    fi

    count=0

    for ((i=0; i < "${#arg1}"; i++)); do
        if [[ "${arg1:i:1}" != "${arg2:i:1}" ]]; then
            ((count++))
        fi
    done

    echo $count
}

main "$@"