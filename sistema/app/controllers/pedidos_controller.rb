class PedidosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:pedido, {}).permit(:datapedido, :dataenvio, :ordemdeservico_id)]
   end

end
