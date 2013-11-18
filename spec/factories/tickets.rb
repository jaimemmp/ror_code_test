# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ticket do
    seat "MyString"
    transport "MyString"
  end
end
