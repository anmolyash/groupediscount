json.array!(@temporaries) do |temporary|
  json.extract! temporary, :id
  json.url temporary_url(temporary, format: :json)
end
