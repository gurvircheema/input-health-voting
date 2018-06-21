json.extract! feature_request, :id, :name, :created_by_user_id, :created_at, :updated_at
json.url feature_request_url(feature_request, format: :json)
