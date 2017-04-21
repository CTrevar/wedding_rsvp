json.extract! guest, :id, :first_name, :last_name, :rsvp, :email, :num_assistants, :arrival_date, :created_at, :updated_at
json.url guest_url(guest, format: :json)
