class ItensdopedidosController < InheritedResources::Base

        def build_resource_params
        		[params.fetch(:itensdopedido, {}).permit(:itempedido, :quantidade, :pedido_id, :produto_id)]
    	end

end
