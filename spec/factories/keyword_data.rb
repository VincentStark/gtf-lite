# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :keyword_datum, :class => 'KeywordData' do
    data 1
    keyword_id 1
    collected_at "2013-12-01 16:54:32"
  end
end
