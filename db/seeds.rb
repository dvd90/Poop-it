require 'faker'
Owner.destroy_all
Toilet.destroy_all
Renter.destroy_all
10.times do
  owner = Owner.new(
    email: Faker::Internet.email,
    password: '123456',
    password_confirmation: '123456'
  )
  owner.save!
  toilet1 = Toilet.new(title: Faker::RickAndMorty.quote, description: Faker::Demographic.race, location: Faker::Address.street_address, price: 3, owner: owner)
  toilet2 = Toilet.new(title: Faker::RickAndMorty.quote, description: Faker::Demographic.race, location: Faker::Address.street_address, price: 3, owner: owner)
  toilet1.save!
  toilet2.save!
end
renter = Renter.new(email: 'lorene@gmail.com', password: 'tkontoi', password_confirmation: 'tkontoi')
renter.save!
