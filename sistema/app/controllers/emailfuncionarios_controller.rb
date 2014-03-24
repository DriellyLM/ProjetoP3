class EmailfuncionariosController < InheritedResources::Base

   def build_resource_params
        		[params.fetch(:emailfuncionario, {}).permit(:email, :funcionario_id)]
   end

end
