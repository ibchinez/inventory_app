json.extract! stock, :id, :product, :batch_no, :quantity, :manufacture_date, :expiry_date, :remark, :created_at, :updated_at
json.url stock_url(stock, format: :json)
