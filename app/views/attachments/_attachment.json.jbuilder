json.extract! attachment, :id, :name, :description, :user_id, :artifact_id, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)