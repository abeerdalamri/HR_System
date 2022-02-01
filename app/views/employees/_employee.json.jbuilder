json.extract! employee, :id, :name, :email, :job, :salary, :emp_status, :created_at, :updated_at
json.url employee_url(employee, format: :json)
