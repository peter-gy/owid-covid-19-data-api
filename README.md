# Backend

## Running with Docker

Build the image:

```shell
docker build -t owid-covid-data-api .
```

Run the image locally:

```shell
docker run --name owid-covid-data-api -p 8000:8000 owid-covid-data-api
```