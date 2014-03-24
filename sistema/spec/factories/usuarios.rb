# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :usuario do
    login "MyString"
    senha "MyString"
    ativo "MyString"
    funcionario nil
    niveldeacesso nil
  end
end
