json.array!(@compensations) do |compensation|
  json.extract! compensation, :id, :employee_id, :type, :amount
  json.url compensation_url(compensation, format: :json)
end
