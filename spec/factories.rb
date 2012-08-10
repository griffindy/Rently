FactoryGirl.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    name "Dylan Griffin"
    email
    password "password"

    factory :landlord, class: User do
      type "Landlord"
    end

    factory :tenant, class: User do
      type "Tenant"
    end
  end

  factory :apartment do
    address "97 walden street"
    rent 1600
  end
end
