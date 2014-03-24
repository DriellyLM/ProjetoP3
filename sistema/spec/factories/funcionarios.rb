# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :funcionario do
    email "MyString"
    telefone "MyString"
    nome "MyString"
    cpf "MyString"
    sexo "MyString"
    datanascimento "MyString"
    cargofuncionario nil
    enderecofuncionario nil
  end
end
