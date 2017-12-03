json.extract! patient, :id, :name, :last_name, :date_birth, :gender, :main_condition, :location, :created_at, :updated_at
json.url patient_url(patient, format: :json)
