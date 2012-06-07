FactoryGirl.define do
  landlord = User.new({name: 'Dylan Griffin', email: 'joe@example.com', password: 'password', role: 'landlord'})
  tenant = User.new({name: 'Dylan Griffin', email: 'joe@example.com', password: 'password', role: 'tenant'})
  factory :landlord do
    initialize_with { landlord }
  end
  factory :tenant do
    initialize_with { tenant }
  end
end
