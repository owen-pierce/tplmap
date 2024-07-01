# Use an official Python 2.7 runtime as a parent image
FROM python:2.7-slim

# Set the working directory in the container
WORKDIR /tplmap

# Copy current directory
COPY . /tplmap

# Install requirements.txt
RUN pip install -r requirements.txt

# Run the application
ENTRYPOINT ["python", "tplmap.py"]
