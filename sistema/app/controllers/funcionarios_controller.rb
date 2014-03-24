class FuncionariosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:funcionario, {}).permit(:nome, :cpf, :sexo, :datanascimento, :cargofuncionario_id, :enderecofuncionario_id)]
    	end

end
