json.extract! event_information, :id, :name, :place, :start_date, :created_at, :updated_at
json.url event_information_url(event_information, format: :json)
