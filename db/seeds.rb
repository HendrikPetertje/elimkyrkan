# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create some users
puts 'Welome to the seed overlord'
puts '--------------------------------'
puts '--------------------------------'
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

puts 'Creating base pages'
if Page.where(title: 'home-intro').any?
  puts 'Home was already created'
else
  if Page.create(title: 'home-intro', content: 'Please do some content editing')
    puts 'Home was created succesfully'
  end
end

if Page.where(title: 'activity-intro').any?
  puts 'activity was already created'
else
  if Page.create(title: 'activity-intro', content: 'Please do some content editing')
    puts 'activity was created succesfully'
  end
end

if Page.where(title: 'about-intro').any?
  puts 'about was already created'
else
  if Page.create(title: 'about-intro', content: 'Please do some content editing')
    puts 'about was created succesfully'
  end
end

if Page.where(title: 'links-intro').any?
  puts 'links was already created'
else
  if Page.create(title: 'links-intro', content: 'Please do some content editing')
    puts 'links was created succesfully'
  end
end


if Page.where(title: 'prayer-intro').any?
  puts 'prayer was already created'
else
  if Page.create(title: 'prayer-intro', content: 'Please do some content editing')
    puts 'prayer was created succesfully'
  end
end
