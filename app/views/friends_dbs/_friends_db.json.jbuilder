json.extract! friends_db, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url friends_db_url(friends_db, format: :json)
