#! /bin/bash

commands=$(sw_vers -productVersion)

os_file_paths=("/etc/os-version" "/etc/releases")

if [[ "$commands" ]]; then 
    echo "Mac OS Version: $commands"
else
    for os_info in "${os_file_paths[@]}"; do
        result=$(cat "$os_info")
        echo "$result"
        breaks # is it a good idea to put a break here?
    done
fi
