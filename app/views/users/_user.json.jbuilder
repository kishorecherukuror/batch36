json.extract! user, :id, :fname, :lname, :ful_name, :address, :email, :gender, :phone, :age, :dob, :created_at, :updated_at
json.url user_url(user, format: :json)