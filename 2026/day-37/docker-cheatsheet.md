# Docker Cheat Sheet

A quick reference for commonly used Docker commands.

---

# Container Commands

docker run -it ubuntu bash           # Run container interactively
docker run -d nginx                  # Run container in detached mode
docker ps                            # List running containers
docker ps -a                         # List all containers
docker stop <container_id>           # Stop a container
docker start <container_id>          # Start stopped container
docker rm <container_id>             # Remove container
docker exec -it <container_id> bash  # Access container shell
docker logs <container_id>           # View container logs

---

# Image Commands

docker pull nginx                    # Pull image from Docker Hub
docker build -t myapp:1.0 .          # Build image from Dockerfile
docker images                        # List images
docker rmi <image_id>                # Remove image
docker tag myapp:1.0 username/myapp:1.0   # Tag image
docker push username/myapp:1.0       # Push image to Docker Hub

---

# Volume Commands

docker volume create myvolume        # Create volume
docker volume ls                     # List volumes
docker volume inspect myvolume       # Inspect volume
docker volume rm myvolume            # Remove volume

Example:
docker run -v myvolume:/data nginx

---

# Bind Mounts

docker run -v $(pwd):/app nginx      # Mount local directory into container

---

# Network Commands

docker network create mynetwork      # Create network
docker network ls                    # List networks
docker network inspect mynetwork     # Inspect network
docker network connect mynetwork container_name  # Connect container

---

# Docker Compose Commands

docker compose up                    # Start services
docker compose up -d                 # Start in detached mode
docker compose down                  # Stop and remove containers
docker compose ps                    # List running services
docker compose logs                  # View logs
docker compose build                 # Build services

---

# Cleanup Commands

docker system df                     # Show Docker disk usage
docker system prune                  # Remove unused containers/images
docker container prune               # Remove stopped containers
docker image prune                   # Remove unused images
docker volume prune                  # Remove unused volumes

---

# Dockerfile Instructions

FROM ubuntu:20.04        # Base image
WORKDIR /app             # Set working directory
COPY . /app              # Copy files into image
RUN apt update           # Execute command during build
EXPOSE 80                # Expose port
ENV APP_ENV=production   # Set environment variable
CMD ["python","app.py"]  # Default command
ENTRYPOINT ["python"]    # Fixed executable