json.array!(@years) do |year|
  json.extract! year, :id, :year
  json.url year_url(year, format: :json)
end
