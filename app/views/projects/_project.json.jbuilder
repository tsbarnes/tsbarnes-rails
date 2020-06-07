json.extract! project, :id, :name, :summary, :description, :url, :created_at, :updated_at
json.url project_url(project, format: :json)
