json.extract! contact, :id, :first_name, :last_name, :email, :street_address, :postal_code, :city, :state, :country, :phone, :image, :details, :created_at, :updated_at
json.url contact_url(contact, format: :json)
