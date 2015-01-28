# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.where(email: 'peter@picoreclame.nl').any?
  puts 'user Peter is alreaddy in the Database'
else
  User.create(
    email: 'peter@picoreclame.nl',
    password: '1234567890'
  )
end
