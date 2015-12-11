json.array!(@testtests) do |testtest|
  json.extract! testtest, :id
  json.url testtest_url(testtest, format: :json)
end
