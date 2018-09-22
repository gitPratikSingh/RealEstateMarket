json.extract! house, :id, :house_id, :company_id, :location, :square_footage, :year_built, :style, :list_price, :num_of_floors, :basement, :current_owner, :realtor_contact, :potential_buyers, :created_at, :updated_at
json.url house_url(house, format: :json)
