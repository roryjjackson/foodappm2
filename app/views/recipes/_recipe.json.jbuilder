json.extract! recipe, :id, :name, :description, :instructions, :prep_time, :cook_time, :user_id, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
