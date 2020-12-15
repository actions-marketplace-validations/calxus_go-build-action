# Go Build Action

This action resolves the dependencies of a go project and builds an executable

## Inputs

### `IMAGE_NAMESPACE`

**Required** The namespace the image is to be tagged as.

### `IMAGE_NAME`

**Required** The name the image is to be tagged as.

### `IMAGE_VERSION`

The version the image is to be tagged as. Default `"latest"`.

### `DOCKER_USERNAME`

**Required** The username used to authenticate to dockerhub.

### `DOCKER_PASSWORD`

**Required** The password used to athenticate to dockerhub.

## Example usage

```
uses: gtadam/go-build-action@v1
with:
  IMAGE_NAMESPACE: 'gtadam'
  IMAGE_NAME: 'go-build'
  IMAGE_VERSION: 'latest'
  DOCKER_USERNAME: 'docker'
  DOCKER_PASSWORD: 'password'
```