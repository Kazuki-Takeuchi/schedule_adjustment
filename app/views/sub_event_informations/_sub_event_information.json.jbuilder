json.extract! sub_event_information, :id, :name, :place, :url, :start_time, :price, :created_at, :updated_at
json.url sub_event_information_url(sub_event_information, format: :json)
