FactoryBot.define do
  factory :book do
    title { "MyString" }
    summary { "MyText" }
    genre { "MyString" }
    publish_date { "2019-10-20" }
    num_pages { 1 }
    image_url { "MyString" }
    author { nil }
  end
end
