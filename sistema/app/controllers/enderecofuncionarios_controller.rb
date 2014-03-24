class EnderecofuncionariosController < InheritedResources::Base
    def build_resource_params
        		[params.fetch(:enderecofuncionario, {}).permit(:logradouro, :numero, :bairro, :cidade, :uf, :cep)]
    end
end
