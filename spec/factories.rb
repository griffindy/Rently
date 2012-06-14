FactoryGirl.define do
  factory :Landlord, class: User do
    name "Dylan Griffin"
    type "Landlord"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :Tenant, class: User do
    name "Dylan Griffin"
    type "Tenant"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :apartment do
    address "97 walden street"
    rent "1600"
  end
end
