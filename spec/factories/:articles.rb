FactoryGirl.define do
  factory :article do
    body { Faker::Lorem.paragraph }
    title { Faker::Lorem.sentence }
    published true
  end
end
