class ProdutosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:produto, {}).permit(:quantidade, :numeroee, :dataentradaestoque, :datasaidaestoque)]
    end

end
