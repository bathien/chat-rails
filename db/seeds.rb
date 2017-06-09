password = '123456'
1.upto(5) do |i|
  User.create(
    email: "user-#{i}@gmail.com",
    password: password,
    password_confirmation: password
  )
end

1.upto(5) do |i|
	User.create!(email: "staff-#{i}@sample.com", password: password, status: 1)
end
Shop.create!(name: "URBAN RESEARCH 1")

Shop.create!(name: "URBAN RESEARCH 2")

Shop.create!(name: "URBAN RESEARCH 3")


Shop.create!(name: "URBAN RESEARCH 4")

Shop.create!(name: "URBAN RESEARCH 5")

Item.create!(name: "Item 1", shop_id: 1)
Item.create!(name: "Item 2", shop_id: 1)
Item.create!(name: "Item 3", shop_id: 1)
Item.create!(name: "Item 4", shop_id: 1)
Item.create!(name: "Item 5", shop_id: 1)
Item.create!(name: "Item 6", shop_id: 1)
Item.create!(name: "Item 7", shop_id: 1)

UserShop.create!(shop_id: 1, user_id: 6)
UserShop.create!(shop_id: 1, user_id: 7)
UserShop.create!(shop_id: 1, user_id: 8)
UserShop.create!(shop_id: 1, user_id: 9)
