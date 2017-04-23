json.extract! post, :id, :title, :content, :created_at, :updated_at
json.url admin_post_url(post, format: :json)
