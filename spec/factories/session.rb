 FactoryBot.define do
  factory :session do
    title { Faker::Session.title }
    user { create(:user) }
  end
 end