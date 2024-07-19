FROM nginx:alpine

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set the entrypoint script to run on container start
ENTRYPOINT ["/entrypoint.sh"]

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]