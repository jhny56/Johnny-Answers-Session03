# Docker Quiz: Questions

1. **If Docker containers are like shipping containers, what would the Docker image be?**
   - Answer: Products inside containers?

2. **You want to ensure your container is running fine and healthy. Which Docker feature will you use to monitor its health?**
   - Answer: 
        docker logs: View the logs of a running container
        docker attach: Attach to a running container and view its output
        docker top: View the running processes of a container
        docker events: View real-time events from the Docker daemon, such as when a container is created or destroyed


3. **If a Docker network is like a company's internal LAN, what would `docker-compose.yml` be?**
   - Answer: docker compose control and configure different containers (build images into different containers and start its servers and...)

4. **You have two services, `frontend` and `backend`, and you want to ensure that `backend` starts before `frontend`. Which Docker Compose key value will you use?**
   - Answer: depends_on (and not wait_for :) )

5. **If Docker volumes are like USB drives, what does the `volumes` key in Docker Compose do?**
   - Answer: 
        services:
        backend:
            image: example/database
            volumes:
            - db-data:/etc/data

        backup:
            image: backup-service
            volumes:
            - db-data:/var/lib/backup/data

        volumes:
        db-data:
    
    The db-data volume is mounted at the /var/lib/backup/data and /etc/data container paths for backup and backend respectively.

6. **You need to create multiple instances of the same service. What feature of Docker Compose will you use?**
   - Answer: 
        services:
            myapp:
                image: awesome/webapp
                deploy:
                    mode: replicated       <-----
                    replicas: 6             <------
    this will create multiple containers and and have the same image


7. **If Docker networks are like chat rooms, what would the `bridge` network mode be?**
   - Answer: 
        bridge only allows containers to connect if they are local, so it would be a local network chat room.

8. **You want to limit the CPU usage of a specific container. Which Docker Compose key value will you use?**
   - Answer: 
    deploy:
    resources:
        limits:
            cpus: '0.001'  <-----
            memory: 50M


9. **If the Docker Hub is like a public library, what would `docker pull` be?**
   - Answer: 
        docker pull download a image made public, its like using pip install to download libraries in python, but here we download images.

10. **You need to pass environment variables to a container to configure its settings. Which Docker Compose key value will you use?**
    - Answer: 
        my-service:
            image: ${IMAGE_NAME}
            environment:
                MY_SECRET_KEY: ${MY_SECRET_KEY}    <---- our env variable is MY_SECRET_KEY


11. **If a Docker container is like a running application on your computer, what would the Dockerfile be?**
    - Answer: 
        Dockerfile is the file that tells our machine what image to get (download) or build to be able to put it in a container, we build images from dockerfiles

12. **You want to make sure a container only starts if another service is successfully running. Which Docker Compose feature helps with this dependency management?**
    - Answer: depends_on ?

13. **If the Docker Compose file (`docker-compose.yml`) is like a party invitation list, what would the `services` section be?**
    - Answer: A service can be run by one or multiple containers. With docker you can handle containers and with docker-compose you can handle services.
        web:
            image: example/my_web_app:latest
            expose:
                - 80
            links:
                - db 

        db:
            image: postgres:latest

        This compose file defines two services, web and db.
        so services would be the people invited?

14. **You want to share data between multiple running containers. What Docker feature will you use?**
    - Answer: Docker networking or volumes

15. **If Docker CLI commands are like the controls on a remote control, what would `docker-compose up -d` do?**
    - Answer: 
        docker compose up picks up the changes by stopping and recreating the containers (preserving mounted volumes).
        -d for Detached mode: Run containers in the background
16. **You need to add a host device (like a GPU) to your container. Which Docker Compose key value will you use?**
    - Answer: network_mode ?

17. **If Docker containers are like individual apartments, what would `docker-compose` be?**
    - Answer: docker compose controls these containers, so...?

18. **You want to ensure that your service only uses a specific amount of memory. Which Docker Compose key value will you use?**
    - Answer: memory: 50M

19. **If Docker Compose networks are like different floors in a building, what would the `networks` key in the Docker Compose file be?**
    - Answer: elevator that connects the floors
        networks:
            frontend:
                # Use a custom driver
                driver: custom-driver-1
            backend:
                # Use a custom driver which takes special options
                driver: custom-driver-2
                driver_opts:
                    foo: "1"
                    bar: "2"

20. **You need to run a specific command every time your container starts. Which Docker Compose key value will you use?**
    - Answer: ENTRYPOINT or CMD
