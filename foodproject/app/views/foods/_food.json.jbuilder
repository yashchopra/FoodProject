json.extract! food, :id, :fooditem, :foodtype, :expiration, :pickupstart, :pickupend, :specialnote, :created_at, :updated_at
json.url food_url(food, format: :json)