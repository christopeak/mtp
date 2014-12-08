json.array!(@applications) do |application|
  json.extract! application, :id, :projid, :title, :cost, :location
  json.url application_url(application, format: :json)
end
