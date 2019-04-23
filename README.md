## Cloud Tools Docker Image

contents:
* docker 18.09.5
* curl
* make
* jq
* git
* awscli 1.16.144
* s3cmd 2.0.2
* kubectl

## Build:

```bash
docker build -t abdullahalmariah/cloud-tools:latest .
docker push abdullahalmariah/cloud-tools:latest
```
