# Requirements
 - Docker

# Setup
 - `git clone https://github.com/vinchi777/demoapi`
 - `cd && docker-compose build`
 - `docker-compose up`
 - `docker-compose run rails_api rails db:create`
 - `docker-compose run rails_api rails db:migrate`

# If running on Linux
 - `cd data/db/`
 - `sudo chown -R $USER:$USER .`

# Creating models/tables
 - `docker-compose run rails_api rails g model User`
 - `docker-compose run rails_api rails db:migrate`

# Inspect/debug in console
 - `docker-compose run rails_api rails console`

# Endpoints

### List notes
 ```
   GET localhost:3000/notes
 ```
 
### Create note
 ```
   POST localhost
   {
     data: {
       attributes: {
          subject: "Test",
          body: "Test,
        }
     }
   }
```
