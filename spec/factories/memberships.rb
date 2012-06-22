# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :membership do
    user nil
    pending false
    group nil
    blocked false
    glevel nil
  end
end
