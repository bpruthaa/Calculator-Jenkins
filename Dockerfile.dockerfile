# Dockerfile

# Use the official Python image
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose a port (if needed, e.g., for a web app, otherwise not necessary)
# EXPOSE 5000

# Run the tests (optional, if you want to run tests in the container by default)
CMD ["pytest"]
