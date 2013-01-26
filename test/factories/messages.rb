# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    subject "MyString"
    body "MyText"
    sender 1
  end
end
