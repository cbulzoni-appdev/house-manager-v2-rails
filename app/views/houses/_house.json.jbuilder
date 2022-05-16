json.extract! house, :id, :street_address, :city, :state, :zip_code, :purchase_date, :owner_id, :created_at, :updated_at
json.url house_url(house, format: :json)
