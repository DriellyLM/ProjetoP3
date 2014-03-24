# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :produto do
    quantidade 1
    numeroee 1
    dataentradaestoque "MyString"
    datasaidaestoque "MyString"
  end
end
