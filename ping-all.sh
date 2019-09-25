#!/usr/bin/env bash

function myping() {
    local host="$1"
    cost="$(ping -c 5 "$host" | tail -1 | grep 'round-trip' | awk -F '/' '{print $5}')"
    if [[ "$cost" == "" ]]; then
        return 1
    else
        return 0
    fi
}

while IFS=$'\t' read -r name ratio domain; do
    echo -n "checking $domain ..."
    myping "$domain"
    if [[ $? -eq 0 ]]; then
        echo -e " \033[0;32m✔\033[0m ${cost}ms $domain $ratio"
    else
        echo -e " \033[0;31m✘\033[0m"
    fi
done < ./servers.tsv
