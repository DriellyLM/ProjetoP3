# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :itensdopedido do
    itempedido "MyString"
    quantidade 1
    pedido nil
    produto nil
  end
end
