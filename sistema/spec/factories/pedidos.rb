# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pedido do
    datapedido "MyString"
    dataenvio "MyString"
    ordemdeservico nil
  end
end
