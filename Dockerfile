# Use the official python 3.11 image
FROM python:3.11.4-alpine3.18
# Set the working directory
WORKDIR /app

# install dependencies
COPY requirements.txt requirements.txt
RUN pip3 install --no-cache-dir -r requirements.txt

# copy the current directory contents into the container at /app
COPY . .

# expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python3","app.py"]