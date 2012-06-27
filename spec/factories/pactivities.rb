# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pactivity do
    name "MyString"
    user nil
    exercise nil
    duration 1.5
  end
end
