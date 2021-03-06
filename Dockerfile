# Use official Python runtime as parent image
FROM python:2.7-slim

# Set the working directory at /app
WORKDIR /app

# Copy the current directory contents into container at /app
ADD . /app

# Install and needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when container launches
CMD ["python", "app.py"]
