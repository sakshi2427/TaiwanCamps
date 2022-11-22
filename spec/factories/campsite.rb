FactoryBot.define do
  factory :campsite do
    id {1}
    name { "Longmen Camping Ground" }
    category { "private" }
    address { "No. 100號, Xinglong St, Gongliao District, New Taipei City, Taiwan 228" }
    county { "New Taipei City" }
    postal_code { "228" }
    area { "North" }
    website { "https://www.lonmen.tw" }
    phone { "0225000000" }
  end
end
