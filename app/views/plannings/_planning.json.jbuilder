json.extract! planning, :id, :status, :postponed_reason, :postponed_date, :scheduled_datetime, :scheduled_interviewer, :scheduled_location, :excluded_reason, :declined_reason, :created_at, :updated_at
json.url planning_url(planning, format: :json)
