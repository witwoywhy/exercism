#!/usr/bin/env bash

main() {
    if [[ "$#" -gt 1 || "$#" -eq 0 ]]; then
        echo "Usage: error_handling.sh <person>"
        exit 1
    fi

    echo "Hello, $1"
}

main "$@"