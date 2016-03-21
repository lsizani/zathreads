json.array!(@designers) do |designer|
  json.extract! designer, :id, :name, :surname, :cell_number, :email, :address_line_1, :address_line_2, :address_line_3, :surburb, :city, :province, :country, :post_code, :bio, :photo_url
  json.url designer_url(designer, format: :json)
end
