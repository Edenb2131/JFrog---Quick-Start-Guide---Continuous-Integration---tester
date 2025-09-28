# Start with a small, lightweight base image
FROM alpine:latest

# Define the command to run when the container starts
CMD ["echo", "Hello from the Docker container!"]
