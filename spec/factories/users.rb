FactoryBot.define do
  factory :user do
    id {1}
    email { "test@hellowalla.com" }
    password { "test" }
    first_name { "Walla" }
    last_name { "Tester" }
    twitter_handle { "AP" }
  end
end
