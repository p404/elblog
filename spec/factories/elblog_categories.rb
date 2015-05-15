FactoryGirl.define do
  factory :elblog_category, class: 'Elblog::Category' do
    name { FFaker::HipsterIpsum.word }
  end
end
