class CargofuncionariosController < InheritedResources::Base
    def build_resource_params
        		[params.fetch(:cargofuncionario, {}).permit(:cargofuncionario)]
    end
end
