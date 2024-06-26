## Sample Application of Running Flask using Docker comtainer

This repository contains a simple Flask application that runs inside a Docker container. The project is structured to facilitate easy setup and deployment using Docker.

### Project Structure
The project directory is structured as follows:

Flask-app
-dockerfile
-requirements.txt
-app.py

### Prerequisites
Before you begin, ensure you have Docker installed on your system. You can download and install Docker from Docker's official website.

### Setting Up the Application
cd <repository-directory>

### Build the Docker Image
Navigate to the app directory where the Dockerfile is located and build the Docker image:
docker build -t flask-app .
This command builds a Docker image named flask-app based on the instructions in Dockerfile.

### List Docker Images:
To see the list of available Docker images:
docker images

### Run the Docker Container:
Run the Docker container mapping the ports so that the Flask application is accessible through the host machine
docker run -it -p 5000:5000 flask-app
This command runs the container in interactive mode with a terminal and maps port 5000 of the container to port 5000 on the host.

### Interact with the Flask Application
Once the container is running, you can access the Flask application by opening a web browser and visiting:
http://localhost:5000
Replace localhost with the appropriate IP address if accessing from another device.

### Stopping the Container
To stop the Docker container, you can press CTRL+C in the terminal where the container is running. Alternatively, you can stop the container from another terminal:
docker ps
docker stop $(docker ps -q)

### Access the Container's Shell:
If you need to access the shell of the container:
docker run -it flask-app sh

### Running Flask Inside the Container:
If you need to manually start the Flask application inside the container:
flask run --host=0.0.0.0
This command tells Flask to listen on all network interfaces, making it accessible on your network.

![Screenshot 2024-06-26 at 12 55 16 AM](https://github.com/sreenijaj/Python-Flask-Docker/assets/115388500/a9157230-4f73-40ab-97ce-6c368afdda70)


