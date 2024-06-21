# Use an official Scala image as a parent image
FROM hseeberger/scala-sbt:11.0.11_1.5.5_2.13.6

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in build.sbt
RUN sbt update

# Register slash commands
RUN sbt "runMain RegisterCommands"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run sbt to start the bot
CMD ["sbt", "run"]