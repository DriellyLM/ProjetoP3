# coding: utf-8

require 'spec_helper'

feature 'gerenciar produto' do

	scenario 'incluir produto', :javascript => true do
		
		visit new_produto_path
		preencher_e_verificar_produto

  	end

	scenario 'alterar produto' do #, :js => true do
	
		produto = FactoryGirl.create(:produto)
    	
    	visit edit_produto_path(produto)
    	preencher_e_verificar_produto

	end

	scenario 'excluir produto' do #, :javascript => true do
        	
        	produto = FactoryGirl.create(:produto)
        	visit produtos_path
        	click_link 'Excluir'

	end

   def preencher_e_verificar_produto
      
      fill_in 'Quantidade', :with => "200"
      fill_in 'Número da Etiqueta Eletrônica', :with => "1234567"
      fill_in 'Data de Entrada no Estoque', :with => "2013-08-15"
      fill_in 'Data de Saída do Estoque', :with => "2014-03-24"
 
      click_button 'Salvar'

      page.should have_content 'Quantidade: 200'
      page.should have_content 'Número da Etiqueta Eletrônica: 1234567'
      page.should have_content 'Data de Entrada no Estoque: 2013-08-15'
      page.should have_content 'Data de Saída do Estoque: 2014-03-24'

   end
end
