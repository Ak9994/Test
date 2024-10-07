# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the application code
COPY app.py .

#modify permissions
RUN chmod -R 755 /app

# Command to run the application
CMD ["python", "app.py"]
