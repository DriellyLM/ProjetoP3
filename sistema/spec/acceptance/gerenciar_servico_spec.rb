# coding: utf-8

require 'spec_helper'

feature 'gerenciar servico' do

	scenario 'incluir servico', :javascript => true do
		
		visit new_servico_path
		preencher_e_verificar_servico

  	end

	scenario 'alterar servico' do #, :js => true do
	
		servico = FactoryGirl.create(:servico)
    	
    	visit edit_servico_path(servico)
    	preencher_e_verificar_servico

	end

	scenario 'excluir servico' do #, :javascript => true do
        	
        	servico = FactoryGirl.create(:servico)
        	visit servicos_path
        	click_link 'Excluir'

	end

   def preencher_e_verificar_servico
      
      fill_in 'Tipo de Serviço', :with => "XY"   
 
      click_button 'Salvar'

      page.should have_content 'Tipo de Serviço: XY'

   end
end
