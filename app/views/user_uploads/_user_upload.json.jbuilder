json.extract! user_upload, :id, :name, :created_at, :updated_at
json.url user_upload_url(user_upload, format: :json)
