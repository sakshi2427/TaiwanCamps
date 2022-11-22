FactoryBot.define do
  factory :user do
    id {1}
    email {"test@user.com"}
    password { "123456" }
    first_name { "John" }
    last_name { "Doe" }
  end
end
