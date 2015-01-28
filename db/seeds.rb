# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create some users
puts 'creating base users'

# Peter van der Meulen
if User.where(email: 'peter@picoreclame.nl').any?
  puts 'user Peter is already in the Database'
else
  if User.create(
    email: 'peter@picoreclame.nl',
    password: '1234567890'
  )
    puts 'Peter created'
  else
    puts 'There was an error creating Peter'
  end
end

# Isak Agren
if User.where(email: 'isak.agren@hotmail.com').any?
  puts 'User Isak is already in the Database'
else
  if User.create(
    email: 'isak.agren@hotmail.com',
    password: '1234567890'
  )
    puts 'Isak created'
  else
    puts 'There was an error creating Isak'
  end
end

puts 'Finished creating users'
puts '--------------------------------'
