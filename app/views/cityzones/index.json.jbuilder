json.array!(@cityzones) do |cityzone|
  json.extract! cityzone, :id, :cityzone
  json.url cityzone_url(cityzone, format: :json)
end
