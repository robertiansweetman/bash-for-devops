#! /bin/bash

mactest=$(sw_vers -productVersion)

if [[ $mactest ]]; then 
    echo "OS X Version: $(sw_vers -productVersion)"
else
    echo "Not a mac"
fi

