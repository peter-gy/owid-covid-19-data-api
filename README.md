# OWID Covid-19 Data API

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/peter-gy/owid-covid-19-data-api)

The purpose of this project is to expose the Covid-19 data provided by [owid](https://github.com/owid) in the form of a
REST API.

The data source of the API is the CSV file which is being constantly updated by the owid team in
their [covid-19-data github repository](https://github.com/owid/covid-19-data): [owid-covid-data.csv](https://github.com/owid/covid-19-data/blob/master/public/data/owid-covid-data.csv)
.

This project is built on top of a custom fork of the [fastapi-csv](https://pypi.org/project/fastapi-csv/) Python
package.

## Local Setup

Create a Python Virtual environment and install the dependencies:

```shell
$ python3 -m venv venv
$ source venv/bin/activate
$ (venv) pip install -r requirements.txt
```

Start the FastAPI instance:

```shell
uvicorn owid_covid19_data_api.main:app
```

## Running Locally Using Docker

Build the image:

```shell
docker build -t owid-covid-data-api .
```

Run a container from the image:

```shell
docker run --name owid-covid-data-api -p 8000:8000 owid-covid-data-api
```