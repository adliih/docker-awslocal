# Docker Image for awslocal

This repository contains the Dockerfile and configuration to build the `awslocal` Docker image. The image is used to interact with LocalStack for local AWS development, specifically for S3 operations.

## Sample Usage

Here is my docker-compose snippet that run s3-localstack and setup required bucket based on app `.env`:

```yaml
services:
  dev-s3:
    image: localstack/localstack:s3-latest
  dev-bucket-setup:
    image: adliih/awslocal
    command: |
      awslocal s3 mb s3://$MEDIA_BUCKET
    depends_on:
      - dev-s3
    env_file:
      - .env
    environment:
      AWS_ENDPOINT_URL: http://dev-s3:4566
```
