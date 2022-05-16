json.extract! appliance, :id, :category, :type, :make, :model, :year, :last_serviced, :service_due, :notes, :house_id, :contact_id, :created_at, :updated_at
json.url appliance_url(appliance, format: :json)
