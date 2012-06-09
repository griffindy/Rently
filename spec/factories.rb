FactoryGirl.define do
  factory :landlord, class: User do
    name "Dylan Griffin"
    role "landlord"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :tenant, class: User do
    name "Dylan Griffin"
    role "tenant"
    email "griffindy@gmail.com"
    password "password"
  end

  factory :apartment do
    address "97 walden street"
    rent "1600"
  end
end
