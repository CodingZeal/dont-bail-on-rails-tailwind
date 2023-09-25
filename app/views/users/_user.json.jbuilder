json.extract! user, :id, :first_name, :last_name, :username, :email, :active, :role, :bio, :dino_costume_size, :created_at, :updated_at
json.url user_url(user, format: :json)
