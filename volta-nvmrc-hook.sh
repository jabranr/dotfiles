#!/bin/bash

# Check if .nvmrc file exists in the current directory
if [ -f .nvmrc ]; then
  # Read the Node.js version from .nvmrc
  NODE_VERSION=$(cat .nvmrc)

  # Remove 'v' prefix if present
  NODE_VERSION=${NODE_VERSION#v}
  
  # Validate the semver format (major and patch parts optional)
  if [[ $NODE_VERSION =~ ^[0-9]+(\.[0-9]+)?(\.[0-9]+)?$ ]]; then
    # Update the Volta configuration
    echo -e "Running volta install for node version $NODE_VERSION";
    volta install node@$NODE_VERSION
  fi
fi

