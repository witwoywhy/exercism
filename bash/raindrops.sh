#!/usr/bin/env bash

main() {
    num=$1
    output=""

    if [[ $((num%3)) -eq 0 ]]; then 
        output="$output"Pling
    fi

    if [[ $((num%5)) -eq 0 ]]; then 
        output="$output"Plang
    fi

     if [[ $((num%7)) -eq 0 ]]; then 
        output="$output"Plong
    fi

    if [[ "$output" == "" ]]; then 
        echo $1
    else
        echo $output
    fi
}

main "$@"

# community solutions
#!/usr/bin/env bash
# (( $1 % 3 )) || result+=Pling
# (( $1 % 5 )) || result+=Plang
# (( $1 % 7 )) || result+=Plong
# echo ${result:-$1}