json.extract! project, :id, :description, :status, :date_started, :date_completed, :notes, :priority, :estimated_cost, :house_id, :contact_id, :created_at, :updated_at
json.url project_url(project, format: :json)
