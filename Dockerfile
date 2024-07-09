# Use the official Python image from the Docker Hub as the base image
#
FROM python
# Set the working directory in the container to /app
#
WORKDIR /app
# Copy the current directory contents into the container at /app
#
COPY . /app
# Install any needed packages specified in requirements.txt
#

RUN pip install -r api/requirements.txt
# Make port 5000 available to the world outside this container
# i made both ports 5000
EXPOSE 5000:5000 
# Define environment variable
#
ENV DEBIAN_FRONTEND=noninteractive
ENV MINIO_ACCESS_KEY=${MINIO_ROOT_USER}
ENV MINIO_SECRET_KEY=${MINIO_ROOT_PASSWORD}

# Run app.py when the container launches
#
CMD [ "python","api/app.py" ]