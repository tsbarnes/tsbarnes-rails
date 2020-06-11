json.extract! article, :id, :title, :summary, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
