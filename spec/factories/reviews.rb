# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    reviewer_name "MyString"
    reviewer_email "MyString"
    title "MyString"
    description "MyText"
    user_id 1
  end
end
