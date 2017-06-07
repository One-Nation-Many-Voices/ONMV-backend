# One Nation Many Voices Back End
This application is a companion for OMNV, which is a mobil app built in react. This application seeds data from a publicly available CSV that lists local Town Hall meetings and their associated information, such as time, place, and representative. The database holds a single table with this data.

## Tech Stack

This application uses Rails 5.0.1

## Setup

* Clone this repo
* Bundle
* Run the command `rspec` to run the tests

## API Endpoint

* `GET /api/v1/events` returns all of the events seeded in the database
* `GET /api/v1/events/:id` returns data for a specific event based on id
