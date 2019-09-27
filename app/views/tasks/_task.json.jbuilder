json.extract! task, :id, :name, :author, :description, :created_at, :updated_at
json.url task_url(task, format: :json)
