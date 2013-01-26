# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mpost do
    content "MyText"
    user nil
  end
end
