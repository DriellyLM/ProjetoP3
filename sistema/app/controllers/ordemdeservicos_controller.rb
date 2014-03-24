class OrdemdeservicosController < InheritedResources::Base

        def build_resource_params
        		[params.fetch(:ordemdeservico, {}).permit(:descricaoservico, :descricaoproduto, :datainicialos, :datafinalos, :usuario_id, :pontoremoto_id)]
    	end

end
