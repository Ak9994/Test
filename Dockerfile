#Official Python image from Docker Hub for Linux
#FROM python:3.9-slim

#Windows python Docker Image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

#Shell for windows
#SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

#EntryPoint
ENTRYPOINT ["powershell.exe"]

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









