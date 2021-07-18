json.extract! concert, :id, :date, :duration, :location, :created_at, :updated_at
json.url concert_url(concert, format: :json)
