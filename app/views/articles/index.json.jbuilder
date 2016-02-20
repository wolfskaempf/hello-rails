json.array!(@articles) do |article|
  json.extract! article, :id, :body, :title, :published
  json.url article_url(article, format: :json)
end
