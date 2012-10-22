# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    event_name "MyString"
    event_description "MyText"
    event_localization "MyString"
  end
end
