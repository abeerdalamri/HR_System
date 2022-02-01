json.extract! team, :id, :name, :desc, :members, :teamLead, :created_at, :updated_at
json.url team_url(team, format: :json)
