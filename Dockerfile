# Use a base image with Python installed
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/americo/sqlifinder.git

# Change directory to sqlifinder
WORKDIR /app/sqlifinder

# Install dependencies
RUN pip install -r requirements.txt

# Set the entrypoint command
ENTRYPOINT ["python3", "sqlifinder.py", "-d", "example.com"]
