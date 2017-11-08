FactoryGirl.define do
  factory :event do

    name                :string
    description          :text
    location            :string
    price                 :decimal
    capacity              :integer
    includes_food           :boolean
    includes_drinks           :boolean
    starts_at               :datetime
    ends_at                 :datetime
    active                :boolean




    # home_type         "House"
    # room_type         "Shared"
    # accommodate       2
    # bedroom_count     2
    # bathroom_count    3
    # listing_name      { Faker::Lorem.words(3).join(' ') }
    # description       { Faker::Lorem.sentence(40) }
    # address           { Faker::Address.city }
    # has_tv            true
    # has_kitchen       true
    # has_airco         true
    # has_heating       true
    # has_internet      true
    # price             { Faker::Commerce.price }
    # user              { build(:user) }


    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
