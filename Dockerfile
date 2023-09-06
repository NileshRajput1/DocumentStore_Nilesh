# Use the official Python image as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application files to the container
COPY app.py .
COPY aws.py .
COPY requirements.txt .
COPY templates templates/

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port the application will run on
EXPOSE 5000

# Define the entry point for the application
CMD ["python", "app.py"]
