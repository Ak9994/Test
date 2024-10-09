# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory
#WORKDIR /app
ADD /app

#for Linux need to modify permissions
#RUN chmod -R 755 /app

# Copy the application code
COPY app.py .

# Command to run the application
CMD ["python", "app.py"]
