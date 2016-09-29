json.extract! doodle, :id, :name, :location, :description, :created_at, :updated_at
json.url doodle_url(doodle, format: :json)