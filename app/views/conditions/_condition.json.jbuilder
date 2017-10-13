json.extract! condition, :id, :name, :gender, :age, :latitude, :longitude, :status, :created_at, :updated_at
json.url condition_url(condition, format: :json)
