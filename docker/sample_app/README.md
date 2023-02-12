# Docker Compose sample app.
Coposed of 3 services: React, NodeJS and Mariadb

## docker-compose.yml
`context`: points to the folder where the Dockerfile is located for the service

We defined two networks for allowing the microservices to connect.
public and private
backend uses both
frontend uses public, so it cannot communicate directly with the db
backend can communicate with both

Some used volumes are scoped at the service level and are not shared between services

depends_on is a Docker Compose keyword to set the order in which services must start and stop.

### restart options
always: Always restart the container if it stops, or is manually stopped due to the daemon stopping. 
unless-stopped: Always restart the container, unless the daemon is stopped, at which point, the container must be restarted manually.

build target ??

`secret`: key value pair, in our case, it gets the value from a file called password.txt


## building and running services
### Build the app

    docker compose build

### Run the app

    docker compose up -d

This will take a while. When the app will run, launch the app in your browser http://localhost:3000

### List the containers

    docker compose ps

### Look at the backend container logs

    docker compose logs -f backend

Refresh the frontend page a few times, the logs should display each hit

### Stop the app

    docker compose down (will stop remove the containers from memory but not the volumes, delete them manually through the desktop or vscode)

### List the containers

Was the app really removed?

    docker compose ps

