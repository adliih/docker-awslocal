# Use minimal alpine base image
FROM python:3.13-alpine

# install awslocal
RUN pip install awscli-local[ver1]
