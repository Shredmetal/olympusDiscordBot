#!/bin/bash

# Define variables
IMAGE_NAME="discord-bot"
CONTAINER_NAME="discord-bot"
DISCORD_TOKEN="your_bot_token"

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Stop and remove any existing container with the same name
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping and removing existing container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Run the Docker container
echo "Running Docker container..."
docker run -d --name $CONTAINER_NAME -e DISCORD_TOKEN=$DISCORD_TOKEN $IMAGE_NAME

echo "Deployment complete. The bot is now running."