json.extract! project, :id, :name, :description, :due_date, :status, :owner_id, :created_at, :updated_at
json.url project_url(project, format: :json)
