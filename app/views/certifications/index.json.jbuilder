json.array!(@certifications) do |certification|
  json.extract! certification, :id, :type, :completed_date, :expiry_date, :issuer, :instructor_name, :user_id, :user_id
  json.url certification_url(certification, format: :json)
end
