# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy only the requirements file first to leverage Docker cache
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Copy the aws.py file into the container
COPY aws.py .

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Use Gunicorn as the production WSGI server to run the Flask app
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8080", "app:app"]
