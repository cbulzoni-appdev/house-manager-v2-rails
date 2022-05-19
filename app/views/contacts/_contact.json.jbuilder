json.extract! contact, :id, :company_name, :contact_name, :contact_type, :email, :phone, :owner_id, :created_at, :updated_at
json.url contact_url(contact, format: :json)
