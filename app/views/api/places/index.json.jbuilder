json.array! @places do |place|
  json.id place.id
  json.name place.name
  json.address place.address
end
