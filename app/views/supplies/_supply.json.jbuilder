json.extract! supply, :id, :customer_name, :quantity, :description, :price_per_unit,
:batch_no, :pack_size, :purchase_date, :manufacture_date, :expiry_date,:remark :user_id, :created_at, :updated_at
json.url supply_url(supply, format: :json)
