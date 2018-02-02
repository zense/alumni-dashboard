# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
n=100
# user = Alumnus.new(
#   email: 'visheshruparelia18@gmail.com',
#   password: '123123',
#   password_confirmation: '123123',
#   name: 'vishesh',
#   admin: true
# )
#
# user.save!
i=0
while i<n
  p=i+11
  user = Alumnus.new(
    email: 'user@domain'+p.to_s+'.com',
    password: '123123',
    password_confirmation: '123123',
    name: 'user@domain'+p.to_s+'.com'
  )
  puts 'user@domain'+p.to_s+'.com'
  user.save!
  i+=1
end
