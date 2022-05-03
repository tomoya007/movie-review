# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'ctmajor07@gmail.com', password: 'tomoya1378', password_confirmation: 'tomoya1378') if Rails.env.development?

movies = [
  { title: 'A', released_year: 24, country: 155, screening_time: 40, synposis: 'aa' },
  { title: 'B', released_year: 26, height: 167, screening_time: 60, synposis: 'bb' },
  { title: 'C', released_year: 34, height: 175, screening_time: 74, synposis: cc' },
  { title: 'D', released_year: 18, height: 160, screening_time: 46, synposis: 'dd' }
]
Movie.create(movies)