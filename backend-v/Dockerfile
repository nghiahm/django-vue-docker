# pull official base image
FROM python:3.9.6

# Set work directory
WORKDIR /opt/src/app/backend/

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# 
# RUN apt-get update \
#     && apt-get install -y python3-pip python3-dev\
#     && pip3 install --upgrade pip

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .

# Entry point
# RUN chmod +x ./docker-entrypoint.sh