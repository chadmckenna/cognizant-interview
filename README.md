# Cognizant Accelerator Interview

## Backend Coding Challenge

By Chad McKenna

### Technology

- Ruby 2.4
- Rails 5.1.4

### Installation

```bash
bundle install
rake db:create
rake db:migrate
# Importer to load .csv into database, any CSV file with the header
# `album,artist,genre,year`
rake db:import['albums.csv']
rails s
```

### Tests

```bash
rake test
```

### API Endpoints

```
Prefix                      Verb   URI Pattern                            Controller#Action
api_v1_albums               GET    /api/v1/albums(.:format)               api/v1/albums#index {:format=>"json"}
                            POST   /api/v1/albums(.:format)               api/v1/albums#create {:format=>"json"}
new_api_v1_album            GET    /api/v1/albums/new(.:format)           api/v1/albums#new {:format=>"json"}
edit_api_v1_album           GET    /api/v1/albums/:id/edit(.:format)      api/v1/albums#edit {:format=>"json"}
api_v1_album                GET    /api/v1/albums/:id(.:format)           api/v1/albums#show {:format=>"json"}
                            PATCH  /api/v1/albums/:id(.:format)           api/v1/albums#update {:format=>"json"}
                            PUT    /api/v1/albums/:id(.:format)           api/v1/albums#update {:format=>"json"}
                            DELETE /api/v1/albums/:id(.:format)           api/v1/albums#destroy {:format=>"json"}
api_v1_genres               GET    /api/v1/genres(.:format)               api/v1/genres#index {:format=>"json"}
                            POST   /api/v1/genres(.:format)               api/v1/genres#create {:format=>"json"}
api_v1_genre                GET    /api/v1/genres/:id(.:format)           api/v1/genres#show {:format=>"json"}
api_v1_artists              GET    /api/v1/artists(.:format)              api/v1/artists#index {:format=>"json"}
                            POST   /api/v1/artists(.:format)              api/v1/artists#create {:format=>"json"}
api_v1_artist               GET    /api/v1/artists/:id(.:format)          api/v1/artists#show {:format=>"json"}
api_v1_albums_filters_years GET    /api/v1/albums/filters/years(.:format) api/v1/years#index {:format=>"json"}
```
