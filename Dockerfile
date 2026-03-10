#From base image of python & slim version of OS
FROM python:3.13-slim

#working directory will be /app inside the container
WORKDIR /app

#copy local files from personal PC to docker container
COPY . .

#install all the dependencies for the application to work
RUN pip install -r requirements.txt

#command to run python application after container is created
CMD ["python", "app.py"]