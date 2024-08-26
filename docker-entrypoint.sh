#!/bin/bash
set -e

# Optional: Execute some pre-startup logic here
echo "Running pre-startup tasks..."

# Install any new dependencies, if needed
npm install

# Run database migrations, if your app has them
# npm run migrate

# Execute the command passed as arguments
exec "$@"
