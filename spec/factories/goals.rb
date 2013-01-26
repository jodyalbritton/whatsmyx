# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal, :class => 'Goals' do
    user nil
  end
end
