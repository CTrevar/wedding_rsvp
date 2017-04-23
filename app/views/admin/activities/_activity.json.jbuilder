json.extract! activity, :id, :name, :description, :dress_code, :start_day, :start_hour, :created_at, :updated_at
json.url admin_activity_url(activity, format: :json)
