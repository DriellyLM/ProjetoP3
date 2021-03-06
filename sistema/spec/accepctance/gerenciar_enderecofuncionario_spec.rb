# coding: utf-8

require 'spec_helper'

feature 'gerenciar endereco do funcionario' do

	scenario 'incluir endereco do funcionario', :javascript => true do
		
		visit new_enderecofuncionario_path
		preencher_e_verificar_enderecofuncionario

  	end

	scenario 'alterar endereco do funcionario' do #, :js => true do
	
		enderecofuncionario = FactoryGirl.create(:enderecofuncionario)
    		visit edit_enderecofuncionario_path(enderecofuncionario)
    		preencher_e_verificar_enderecofuncionario

	end

	scenario 'excluir endereco do funcionario' do #, :javascript => true do
        	
        	enderecofuncionario = FactoryGirl.create(:enderecofuncionario)
        	visit enderecofuncionarios_path
        	click_link 'Excluir'

	end

   def preencher_e_verificar_enderecofuncionario
      
      fill_in 'Logradouro', :with => "Rua Antônio Silva"   
      fill_in 'Numero', :with => "100"
      fill_in 'Bairro', :with => "Parque Santo Amaro"
      fill_in 'Cidade', :with => "Campos dos Goytacazes"
      fill_in 'UF', :with => "RJ"
      fill_in 'CEP', :with => "28000000"
 
      click_button 'Salvar'

      page.should have_content 'Logradouro: Rua Antônio Silva'
      page.should have_content 'Numero: 100'
      page.should have_content 'Bairro: Parque Santo Amaro'
      page.should have_content 'Cidade: Campos dos Goytacazes'
      page.should have_content 'UF: RJ'
      page.should have_content 'CEP: 28000000'

   end
end
