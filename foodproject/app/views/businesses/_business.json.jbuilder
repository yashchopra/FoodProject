json.extract! business, :id, :fooditem, :foodtype, :expiration, :pickupstart, :pickupend, :specialnote, :created_at, :updated_at
json.url business_url(business, format: :json)