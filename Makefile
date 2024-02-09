# Define variables
DOCKER_COMPOSE := docker compose

# Default target
all: help

# Print help message
help:
	@echo "Usage: make [TARGET]"
	@echo "Targets:"
	@echo "  build          Build Docker images"
	@echo "  up             Run Docker containers"
	@echo "  stop           Stop Docker containers"
	@echo "  down           Remove Docker containers"
	@echo "  clean          Remove Docker images"
	@echo "  help           Show this help message"

# Build Docker images
build:
	$(DOCKER_COMPOSE) build

# Run Docker containers
up:
	$(DOCKER_COMPOSE) up -d

# Stop Docker containers
stop:
	$(DOCKER_COMPOSE) stop

# Remove Docker containers
down:
	$(DOCKER_COMPOSE) down

# Remove Docker images and volumes
clean:
	$(DOCKER_COMPOSE) down --volumes --remove-orphans

# Phony targets
.PHONY: all help build up stop down clean
