json.extract! diagnosed_patient, :id, :gender, :age, :latitude, :longitude, :status, :disease_id, :created_at, :updated_at
json.url diagnosed_patient_url(diagnosed_patient, format: :json)
