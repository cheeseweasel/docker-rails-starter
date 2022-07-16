#!/bin/bash
# Interpreter identifier

set -e
# Exit on fail

bundle check || (bundle install && bundle binstubs --all --path="$BUNDLE_BIN")
# Ensure all gems installed. Add binstubs to bin which has been added to PATH in Dockerfile.
yarn install

exec "$@"
# Finally call command issued to the docker service