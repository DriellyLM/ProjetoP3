# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enderecofuncionario do
    logradouro "MyString"
    numero "MyString"
    bairro "MyString"
    cidade "MyString"
    uf "MyString"
    cep 1
  end
end
