class ServicosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:servico, {}).permit(:tipodeservico)]
    end

end
