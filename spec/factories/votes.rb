# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vote do
    vote_belongs_to_all "MyString"
    vote_belongs_to_profesors "MyString"
    vote_time "2012-10-22 13:56:40"
  end
end
