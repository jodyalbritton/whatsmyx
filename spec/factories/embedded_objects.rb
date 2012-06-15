# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :embedded_object do
    embeddable_id 1
  end
end
