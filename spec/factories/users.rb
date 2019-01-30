FactoryBot.define do
  factory :user do
    email { "linda@test.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
