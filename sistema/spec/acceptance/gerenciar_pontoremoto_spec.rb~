# coding: utf-8

require 'spec_helper'

feature 'gerenciar ponto remoto' do

	scenario 'incluir ponto remoto', :javascript => true do
		
		visit new_pontoremoto_path
		preencher_e_verificar_pontoremoto

  	end

	scenario 'alterar ponto remoto' do #, :js => true do
	
		pontoremoto = FactoryGirl.create(:pontoremoto)
    	
    	visit edit_pontoremoto_path(pontoremoto)
    	preencher_e_verificar_pontoremoto

	end

	scenario 'excluir ponto remoto' do #, :javascript => true do
        	
        	pontoremoto = FactoryGirl.create(:pontoremoto)
        	visit pontoremotos_path
        	click_link 'Excluir'

	end

   def preencher_e_verificar_pontoremoto
      
      fill_in 'Endereço', :with => "ABCD"   
 
      click_button 'Salvar'

      page.should have_content 'Endereço: ABCD'

   end
end
