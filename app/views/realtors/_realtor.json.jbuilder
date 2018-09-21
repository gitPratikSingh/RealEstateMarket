json.extract! realtor, :id, :email, :password, :full_name, :phone, :company_id, :created_at, :updated_at
json.url realtor_url(realtor, format: :json)
