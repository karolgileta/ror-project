json.extract! event, :id, :latitude, :longitude, :name, :address, :title, :hidden, :created_at, :updated_at
json.url event_url(event, format: :json)
