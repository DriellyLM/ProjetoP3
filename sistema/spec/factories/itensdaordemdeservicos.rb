# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :itensdaordemdeservico do
    itensos "MyString"
    quantidade 1
    ordemdeservico nil
    servico nil
  end
end
