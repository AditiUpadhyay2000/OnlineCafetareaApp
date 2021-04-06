# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email:'admim@gmail.com',
    password: 'abc@123',
    password_confirmation:'abc@123',
    admin:true            
)

Category.create!(title: 'pizza',description: 'good!',display:true)
Category.create!(title: 'burger',description: 'delicious!',display:true)
Category.create!(title: 'sandwitch',description: 'good!',display:true)

5.times do |i|
burger = Product.new(
                        name: "Burger",
                        description: "so yummy!so yummy! abcd efg hij klj lkhjhjj so yummy! abcd efg hij klj lkhjhjj",
                        price:110.99,
                        available:true,
                        category:Category.find(2)
                    )
pizza = Product.new(
                        name: "Pizza",
                        description: "so yummy!so yummy! abcd efg hij klj lkhjhjjso yummy! abcd efg hij klj lkhjhjj",
                        price:110.99,
                        available:true,
                        category:Category.find(1)
                                )
sandwitch = Product.new(
                        name: "Sandwitch",
                        description: "so yummy! abcd efg hij klj lkhjhjjso yummy! abcd efg hij klj lkhjhjj",
                        price:110.99,
                        available:true,
                        category:Category.find(3)
)

pizza.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_pizza_image.jpg")
burger.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_burger_image.jpg")
sandwitch.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_sandwitch_image.jpg")
if i == 5
pizza.featured = true
burger.featured = true
sandwitch.featured = true
end

pizza.save
burger.save
sandwitch.save
end

