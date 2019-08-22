#!/usr/bin/env bash
envFile="$PWD/devops/local/config/development.env"
env-cmd -f $envFile "$PWD/devops/local/scripts/check-env-vars.sh"

env-cmd -f $envFile webpack --config ./config/webpack.config.ssr.js --watch --mode development --progress
