# Weather Service API, version 1
Every request needs the header X-API-Key.
Base path: /api/v1

## POST /weather/refresh
What it does:
Gets the current temperature from the weather source and saves it as a new reading.
Success response:
HTTP 201 with status 201 and the saved reading in data.
Errors:
HTTP 401 with code unauthorized when the API key is missing or wrong.
HTTP 502 with code upstream_error when the weather source cannot be reached.

## GET /weather/logs
What it does:
Returns the saved readings, newest first.
Options:
limit takes a whole number from 1 to 50, for example limit=10. The default is 10.
format takes json or xml. The default is json.
Success response:
HTTP 200 with status 200 and the readings in data.
Errors:
HTTP 422 with code invalid_limit when limit is not a whole number from 1 to 50.
HTTP 422 with code invalid_format when format is not json or xml.

## GET /weather/logs/{id}
What it does:
Returns one saved reading.
Success response:
HTTP 200 with status 200 and the reading in data.
Errors:
HTTP 404 with code not_found when there is no reading with that id.
