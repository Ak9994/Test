# Use the official Python image from Docker Hub
# FROM python:3.9-slim
# Set the working directory
# WORKDIR /app
# for Linux need to modify permissions
# RUN chmod -R 755 /app
# Copy the application code
# COPY app.py .
# Command to run the application
# CMD ["python", "app.py"]


#for Windows
FROM mcr.microsoft.com/windows/servercore:ltsc2019
SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]
EXPOSE 8081
WORKDIR /app
ENTRYPOINT [".app"]
COPY app.py .
CMD ["python", "app.py"]


