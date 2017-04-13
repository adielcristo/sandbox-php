#!/usr/bin/env bash

project_name="SANDBOX"

env_checks=true

declare -a env_vars=(
    # composer
    "COMPOSER_HOME"
)

for i in "${env_vars[@]}"
do
    if [ -z ${!i} ]
    then
        echo "Variable ${i} unset."
        env_checks=false
    fi
done

if [ "$env_checks" = false ]; then
    echo "Errors were found. Aborting..."
    exit 1
fi

echo "Environment for ${project_name} checked."
