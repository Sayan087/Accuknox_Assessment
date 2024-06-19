# Use a base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application port (if it runs on port 8000, for example)
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
