# coding: utf-8
require 'spec_helper'

feature 'gerenciar pedido' do

  scenario 'incluir pedido' do #, :javascript => true  do
	
    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")

    visit new_pedido_path
    preencher_e_verificar_pedido
   
  end


  scenario 'alterar pedido' do #, :javascript => true  do

    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")
    
    pedido = FactoryGirl.create(:pedido, :ordemdeservico => ordemdeservico)

    visit edit_pedido_path(pedido)
    preencher_e_verificar_pedido

  end


  scenario 'excluir pedido' do #, :javascript => true  do

    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")
 
    pedido = FactoryGirl.create(:pedido, :ordemdeservico => ordemdeservico)

    visit pedidos_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_pedido

    fill_in 'Data do Pedido', :with => '2014-02-27'
    fill_in 'Data do Envio', :with => '2014-03-05'
    
    select 'XXXX', :from => 'Ordem de Serviço'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Data do Pedido: 2014-02-27'
    page.should have_content 'Data do Envio: 2014-03-05'
    page.should have_content 'Ordem de Serviço: XXXX'
    
    
  end   

end
