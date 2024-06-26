## Sample Application of Running Flask using Docker Container

This repository contains a simple Flask application that runs inside a Docker container. It is designed to facilitate easy setup and deployment using Docker.

### Project Structure

The project directory is structured as follows:
Flask-app/
├── Dockerfile
├── requirements.txt
└── app.py

### Prerequisites

Before you begin, ensure you have Docker installed on your system. You can download and install Docker from [Docker's official website](https://www.docker.com/get-started).

### Setting Up the Application

Navigate to the directory containing your project files using:
```bash
cd <path-to-your-application>
```

### Build the Docker Image
To build the Docker image, navigate to the app directory where the Dockerfile is located and run the following command:
```bash
docker build -t flask-app .
```
This command builds a Docker image named flask-app based on the instructions in Dockerfile.

### List Docker Images
To see the list of available Docker images, run:
```bash
docker images
```

### Run the Docker Container
Run the Docker container, mapping the ports so that the Flask application is accessible through the host machine:
```bash
docker run -it -p 5000:5000 flask-app
```
This command runs the container in interactive mode with a terminal and maps port 5000 of the container to port 5000 on the host.

### Interact with the Flask Application
Once the container is running, access the Flask application by navigating to:
```web
http://localhost:5000
```

### Stopping the Container
To stop the Docker container, press CTRL+C in the terminal where the container is running. Alternatively, you can stop the container from another terminal:
```bash
docker ps
docker stop $(docker ps -q)
```

### Access the Container's Shell
If you need to access the shell of the container:
```bash
docker run -it flask-app sh
```

### Running Flask Inside the Container
If you need to manually start the Flask application inside the container:
```bash
flask run --host=0.0.0.0
```




