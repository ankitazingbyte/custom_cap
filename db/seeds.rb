# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create(first_name: 'admin', email: 'admin@example.com', admin: true, password: '12345678')
 Brand.create(name: "new era", image: "new-era-2x.png")
 Brand.create(name: "flexfit", image: "flexfit-2x.png")
 Brand.create(name: "yupoong", image: "yupoong-2x.png")
 Brand.create(name: "nike", image: "nike-2x.png")
 Brand.create(name: "capbeast", image: "classic-2x.png")
 Brand.create(name: "okaley", image: "oakley-2x.png")
 Category.create(name: "Custom Snapbacks",image: "image4.jpg")
 Category.create(name: "Custom Beanies",image: "image8.jpg")
 Category.create(name: "Custom Athletic Hats",image: "image13.jpg")
 Category.create(name: "Custom Fitted Hats",image: "image5.jpg")
 Category.create(name: "Custom 5 Panel Hats",image: "image10.jpg")
 Category.create(name: "Custom Golf Hats",image: "image14.jpg")
 Category.create(name: "Custom Dad Hats",image: "image6.png")
 Category.create(name: "Custom Trucker Hats",image: "image11.jpg")
 Category.create(name: "Custom Military Hats",image: "image15.jpg")
 Category.create(name: "Custom Camo Hats",image: "image7.jpg")
 Category.create(name: "Custom Bucket Hats",image: "image12.jpg")

