json.array!(@projects) do |project|
  json.extract! project, :id, :Project_name, :address, :location, :latitude, :longitude, :size, :total_area, :launch_date, :possesion_date, :price, :price_per_sq_feet, :offer, :overview
  json.url project_url(project, format: :json)
end
