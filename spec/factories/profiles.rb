FactoryBot.define do
  factory :profile do
    birthdate { "2019-04-30" }
    gender { "MyString" }
    bio { "MyString" }
    location { "MyString" }
    state { "MyString" }
    country { "MyString" }
    user { nil }
  end
end
