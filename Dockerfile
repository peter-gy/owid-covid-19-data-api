FROM python:3.9.9-buster

WORKDIR /usr/src/app

# Installing git is necessary to access git dependencies listed in requirements.txt
RUN apt-get update && apt-get install -y git

# Copy and install the dependencies
COPY requirements.txt ./
RUN python3 -m pip install --upgrade pip && \
    pip3 install -r requirements.txt

COPY ./owid_covid19_data_api ./owid_covid19_data_api

# Start the api on port 8000
EXPOSE 8000
CMD ["uvicorn", "owid_covid19_data_api.main:app", "--host", "0.0.0.0", "--port", "8000"]