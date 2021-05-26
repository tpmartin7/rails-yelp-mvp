10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant.categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
