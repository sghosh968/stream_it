json.array!(@commments) do |commment|
  json.extract! commment, :id, :user_id, :commentable_type, :commentable_id, :content
  json.url commment_url(commment, format: :json)
end
