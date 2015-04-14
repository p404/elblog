FactoryGirl.define do
  factory :elblog_post, :class => 'Elblog::Post' do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    author { Faker::Name.name }
  end

  factory :elblog_post_invalid, :class => 'Elblog::Post' do
    title ""
    content ""
    author ""
  end
end
