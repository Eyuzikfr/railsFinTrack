json.extract! record, :id, :income_details, :income_amount, :expenditure_details, :expenditure_amount, :expenditure_category, :created_at, :updated_at
json.url record_url(record, format: :json)
