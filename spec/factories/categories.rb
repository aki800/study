FactoryBot.define do
  factory :category do
    name {Faker::Team.name}
    ancestry {"1"}
  end
end
