FactoryGirl.define do
  factory :project do
    name { Faker::Name.name }
    code { Faker::Code.isbn }
    address1 { Faker::Address.street_address }
    address2 { Faker::Address.street_address }
    city { Faker::Address.city }
    state { Faker::Address.state }
    zip_code { Faker::Address.zip_code }
    # contact { Faker::Superhero.name }
    account
  end
end
