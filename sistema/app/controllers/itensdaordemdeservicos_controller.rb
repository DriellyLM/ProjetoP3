class ItensdaordemdeservicosController < InheritedResources::Base

        def build_resource_params
        		[params.fetch(:itensdaordemdeservico, {}).permit(:itensos, :quantidade, :ordemdeservico_id, :servico_id)]
    	end

end
