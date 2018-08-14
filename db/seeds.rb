require 'faker'


renter = Renter.new(email: 'lorene@gmail.com', password: 'tkontoi', password_confirmation: 'tkontoi')
renter.save!
owner = Owner.new(email: 'owner@hotmail.com', password: '123456', password_confirmation: '123456')
owner.save!
