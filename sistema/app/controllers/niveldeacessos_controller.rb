class NiveldeacessosController < InheritedResources::Base

    def build_resource_params
        		[params.fetch(:niveldeacesso, {}).permit(:descricaonivel)]
   end

end
