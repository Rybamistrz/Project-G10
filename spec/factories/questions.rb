# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question do
    question "MyText"
    question_vote_fields "MyString"
  end
end
