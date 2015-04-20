FactoryGirl.define do
  factory :elblog_post, :class => 'Elblog::Post' do
    title { FFaker::Lorem.sentence }
    content { FFaker::Lorem.paragraph }
    author { FFaker::Name.name }
  end

  factory :elblog_post_invalid, :class => 'Elblog::Post' do
    title ""
    content ""
    author ""
  end
end
