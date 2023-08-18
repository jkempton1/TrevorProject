json.extract! stonk, :id, :stock_name, :stock_abbreviation, :stock_type, :current_price, :bought_price, :created_at, :updated_at
json.url stonk_url(stonk, format: :json)
