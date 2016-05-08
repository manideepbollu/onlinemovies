json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :description, :rating, :movie_id, :user_id
  json.url review_url(review, format: :json)
end
