FactoryBot.define do
  factory :tweet do
    text { Faker::Lorem.paragraph }
    created_at { Faker::Time.between(2.days.ago, Time.now, :all) }
    user
    category
  end
end
