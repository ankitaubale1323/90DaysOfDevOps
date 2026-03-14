# Day 37 – Docker Revision

## Self-Assessment Checklist

Run a container from Docker Hub – can do  
List, stop, remove containers and images – can do  
Explain image layers and caching – can do  
Write Dockerfile from scratch – can do  
Explain CMD vs ENTRYPOINT – can do  
Build and tag custom image – can do  
Create and use named volumes – can do  
Use bind mounts – can do  
Create custom networks – can do  
Write docker-compose.yml – can do  
Use environment variables in Compose – can do 
Write multi-stage Dockerfile – can do  
Push image to Docker Hub – can do  
Use healthchecks and depends_on – can do 

---

# Quick-Fire Questions

## 1. Difference between Image and Container
A Docker image is a read-only template containing application code, dependencies, and environment configuration.  
A container is a running instance of that image.

---

## 2. What happens to data when container is removed?
All data stored inside the container filesystem is deleted unless it is stored in a volume or bind mount.

---

## 3. How do containers communicate on the same network?
Containers communicate using container names as hostnames through Docker's internal DNS.

Example:
web → http://db:5432

---

## 4. docker compose down -v vs docker compose down

docker compose down  
Stops and removes containers and networks.

docker compose down -v  
Stops containers and also removes associated volumes.

---

## 5. Why are multi-stage builds useful?
Multi-stage builds reduce image size by separating build dependencies from the final runtime image.

Example:
Build app in one stage → copy compiled output into lightweight runtime image.

---

## 6. Difference between COPY and ADD

COPY  
Copies files from host to container.

ADD  
Can also extract tar files and download URLs.

Best practice: use COPY unless ADD features are required.

---

## 7. What does -p 8080:80 mean?

Port mapping:

8080 → host port  
80 → container port

Access container using:
http://localhost:8080

---

## 8. How to check Docker disk usage?

docker system df

Shows disk usage of:
Images
Containers
Volumes
Build cache