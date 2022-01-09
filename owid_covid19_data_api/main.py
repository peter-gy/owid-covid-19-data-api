from fastapi.middleware.cors import CORSMiddleware
from fastapi_csv import FastAPI_CSV

csv_url = 'https://raw.githubusercontent.com/owid/covid-19-data/master/public/data/owid-covid-data.csv'
app = FastAPI_CSV(csv_url)
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)
