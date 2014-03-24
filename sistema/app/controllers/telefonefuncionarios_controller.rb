class TelefonefuncionariosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:telefonefuncionario, {}).permit(:numerotelefone, :funcionario_id)]
    	end

end
