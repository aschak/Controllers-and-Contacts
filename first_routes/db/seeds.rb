# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do
  user = User.create(username: Faker::Internet.user_name)
  # user.save
  # User.create(username: Faker::Internet.user_name)
  # User.create(username: Faker::Internet.user_name)
  10.times do
    contact = Contact.create(name: Faker::Name.name, email: Faker::Internet.free_email, user_id: user.id)
    if rand > 0.5
      ContactShare.create(user_id: rand(1..10), contact_id: contact.id)
    end
  end
end

# 10.times do
#   contact = Contact.new(name: Faker::Name.name, email: Faker::Internet.free_email)
#   (rand(2) + 1).times do
#     contact.save(id: (rand(2) + 1))
#     if rand > 0.6
#       ContactShare.create(contact_id: contact.id, user_id: (rand(2) + 1))
#     end
#   end
# end
