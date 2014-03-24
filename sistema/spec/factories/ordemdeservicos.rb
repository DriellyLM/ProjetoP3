# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :ordemdeservico do
    descricaoservico "MyString"
    descricaoproduto "MyString"
    datainicialos "MyString"
    datafinalos "MyString"
    usuario nil
    pontoremoto nil
  end
end
