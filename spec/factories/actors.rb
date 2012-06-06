# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :actor do
    name "MyString"
    email "MyString"
    slug "MyString"
    subject_type "MyString"
    notify_by_email false
    activity_object_id 1
  end
end
