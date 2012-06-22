FactoryGirl.define do
  factory :site_user, class: User do
    name "Dylan Griffin"
    type "Landlord"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :landlord do
    name "Dylan Griffin"
    type "Landlord"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :tenant do
    name "Dylan Griffin"
    type "Tenant"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :apartment do
    address "97 walden street"
    rent 1600
  end
end
