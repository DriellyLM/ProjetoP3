class PontoremotosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:pontoremoto, {}).permit(:endereco)]
    end

end
