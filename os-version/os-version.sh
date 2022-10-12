#! /bin/bash

commands=$(sw_vers -productVersion)

os_file_paths=("/etc/os-version" "/etc/releases" "/etc/redhat-release")

if [[ "$commands" ]]; then 
    echo "Mac OS Version: $commands"
else
    for os_info in "${os_file_paths[@]}"; do
        result=$(cat "$os_info")
        echo "$result"
    done
fi
