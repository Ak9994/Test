# Use the official Python image from Docker Hub
#FROM python:3.9-slim

#for Windows
FROM mcr.microsoft.com/windows/servercore:ltsc2019

#Shell command
#SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

#for Linux need to modify permissions
#RUN chmod -R 755 /app

#Port access
#EXPOSE 8081

# Set the working directory
WORKDIR /app

# Copy the application code
COPY app.py .

# Command to run the application
CMD ["python", "app.py"]









