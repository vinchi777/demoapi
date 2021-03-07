# Requirements
 - Docker

# Setup
 - git clone https://github.com/vinchi777/demoapi
 - docker-compose build
 - docker-compose up
 - docker-compose run rails_api rails db:create
 - docker-compose run rails_api rails db:migrate

# Creating models/tables
 - docker-compose run rails_api rails g model User
 - docker-compose run rails_api rails db:migrate

# Inspect/debug in console
 - docker-compose run rails_api rails console
