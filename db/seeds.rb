unless Product.any?
  Product.create(
    (0..50).to_a.map{|x|
      {title: Faker::Commerce.product_name}
    }
  )
end

unless User.any?
  User.create(email:'test@test.ru', password:'testtest', password_confirmation: 'testtest')
end
