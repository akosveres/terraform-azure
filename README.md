# Terraform-Azure

Docker container which has the latest terraform version and azure cli installed. This is for Linux AMD64.

## Usage

Set an alias to run the Azure CLI commands inside the docker container, ex:

```
alias az="docker run -u $(id -u):$(id -g) -v ${HOME}/.azure:/home/az/.azure -e HOME=/home/az --rm -it puckd/tf-az:0.8 az"
az login
```

You'll need to login once, or if you have Azure CLI installed on your machine already you can share those files with the container, will work either way.

## Why?

When I install Azure CLI on my machine it wants to install python36, I managed my python versions with `pyenv`, thought it's best to keep it separate.
