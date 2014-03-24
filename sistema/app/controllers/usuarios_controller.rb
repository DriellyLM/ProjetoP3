class UsuariosController < InheritedResources::Base

        def build_resource_params
        		[params.fetch(:usuario, {}).permit(:login, :senha, :ativo, :funcionario_id, :niveldeacesso_id)]
    	end

end
