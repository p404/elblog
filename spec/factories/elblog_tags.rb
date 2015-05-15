FactoryGirl.define do
  factory :elblog_tag, class: 'Elblog::Tag' do
    category { FactoryGirl.create(:elblog_category) }
    taggable_id 1
    taggable_type "MyClass"
  end

end
