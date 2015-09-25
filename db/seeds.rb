

unless User.any?
  User.create(email:'test@test.ru', password:'testtest', password_confirmation: 'testtest')
end

unless Shop.any?
  Shop.create(name: 'testshop')
end

unless ShopToUser.any?
  ShopToUser.create(shop: Shop.last, user: User.last)
end

Apartment::Tenant.switch!(Shop.last.database)
unless Product.any?
  Product.create(
    (0..50).to_a.map{|x|
      {
        title: Faker::Commerce.product_name,
        :brand=>Faker::Company.name,
        :description =>Faker::Lorem.sentence(3, false, 4),
        :status=>rand(4)
      }
    }
  )
end

unless Collection.any?
  Collection.create([
    {:name=>'My First Collection'},
    {:name=>'My Second Collection'}
  ])
end

unless Category.any?
  Category.create([
    {name: 'My First Category'},
    {name: 'My Second Category'}
  ])
end

unless CollectionToCategory.any?
  CollectionToCategory.create(category: Category.first, collection: Collection.first)
  CollectionToCategory.create(category: Category.first, collection: Collection.last)
end