#!/bin/sh

# Check if the SECURITY_STRING environment variable is set and not empty
if [ -z "$SECURITY_STRING" ]; then
  echo "The SECURITY_STRING environment variable is not set. Exiting..."
  exit 1
fi

# Write the content of SECURITY_STRING to /usr/share/nginx/html/security.txt
echo "$SECURITY_STRING" > /usr/share/nginx/html/security.txt

# Execute the CMD from the Dockerfile, keeping nginx in the foreground
exec "$@"