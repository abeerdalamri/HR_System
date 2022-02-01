json.extract! target, :id, :name, :desc, :sDate, :fDate, :attr, :team, :status, :created_at, :updated_at
json.url target_url(target, format: :json)
