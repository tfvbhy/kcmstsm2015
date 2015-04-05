json.array!(@finances) do |finance|
  json.extract! finance, :id, :audit, :cash_amount, :check_amount, :check_number, :data_entry, :note, :supporter_name
  json.url finance_url(finance, format: :json)
end
