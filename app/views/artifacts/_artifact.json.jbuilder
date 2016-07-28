json.extract! artifact, :id, :user_id, :subject, :description, :type, :status, :created_at, :updated_at
json.url artifact_url(artifact, format: :json)