# caprover-action
Action to deploy on Caprover server.

## Building
```
docker build -f ./Dockerfile -t ghcr.io/clickiwoo/caprover-action:v1 .
docker push ghcr.io/clickiwoo/caprover-action:v1
```

## Inputs

### `server`

**Required** CapRover server's admin panel URL. Ex. https://captain.root.domain.com.

### `password`

**Required** CapRover admin password. Use ${{ secrets.CAPROVER_PASSWORD }} for better security.

### `appname`

**Required** Application name on the CapRover server. Must exists.

### `branch`

Branch which will be deployed. *Default: master*


## Example usage
```
uses: clickiwoo/caprover-action@v1
with:
  server: 'https://captain.root.domain.com'
  password: '${{ secrets.CAPROVER_PASSWORD }}'
  appname: 'my-app'
```