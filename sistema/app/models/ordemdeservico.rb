class Ordemdeservico < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :pontoremoto
end
