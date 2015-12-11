json.array!(@builders) do |builder|
  json.extract! builder, :id, :name, :phone, :email, :company, :phone1, :phone2, :email1, :email2
  json.url builder_url(builder, format: :json)
end
