json.extract! workday, :id, :hoursWorked, :dayDate, :user_id, :notes, :created_at, :updated_at
json.url workday_url(workday, format: :json)
