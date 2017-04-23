json.extract! hotel, :id, :name, :description, :link, :created_at, :updated_at
json.url admin_hotel_url(hotel, format: :json)
