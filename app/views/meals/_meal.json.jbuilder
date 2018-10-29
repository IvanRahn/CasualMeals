json.extract! meal, :id, :cuisine, :description, :price, :delivery_time, :image, :user_id, :created_at, :updated_at
json.url meal_url(meal, format: :json)
