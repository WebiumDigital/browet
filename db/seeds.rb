Product.create(
  (0..50).to_a.map{|x|
    {title: Faker::Commerce.product_name}
  }
)
