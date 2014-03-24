class Usuario < ActiveRecord::Base
  belongs_to :funcionario
  belongs_to :niveldeacesso
end
