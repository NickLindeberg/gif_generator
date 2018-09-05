# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# @user_1 = User.create(name: 'Nick', email: 'nick@nicklindycodes')
@category_1 = Category.create(title: 'Sweet')
@gif_1 = @category_1.gifs.create(image: 'https://media.giphy.com/media/l2R0aKwejYr8ycKAg/giphy.gif')
@category_2 = Category.create(title: 'Dude')
@gif_2 = @category_2.gifs.create(image: 'https://media.giphy.com/media/ASd0Ukj0y3qMM/giphy.gif')
