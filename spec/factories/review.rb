FactoryBot.define do
  factory :Review do
    id {1}
    content { "Very good camp, there are leaders who will take you to experience different aboriginal activities" }
    rating { 4.6 }
    # association :user, :campsite
  end
end
