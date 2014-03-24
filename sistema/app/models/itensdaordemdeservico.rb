class Itensdaordemdeservico < ActiveRecord::Base
  belongs_to :ordemdeservico
  belongs_to :servico
end
