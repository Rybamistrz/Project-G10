# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    sequence(:name) { |n| "Name #{n}" }
    description "MyText"
    place "MyString"
    begin_at Time.now
  end
end
