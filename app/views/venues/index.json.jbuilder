json.array!(@venues) do |venue|
  json.extract! venue, :id, :venueid, :venueName, :venueAddress, :venueCity, :venueState, :venueZip, :venuePhone, :venueAge
  json.url venue_url(venue, format: :json)
end
