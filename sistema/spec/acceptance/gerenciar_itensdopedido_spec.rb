# coding: utf-8
require 'spec_helper'

feature 'gerenciar itens do pedido' do

  scenario 'incluir itens do pedido' do #, :javascript => true  do
	
    pedido = FactoryGirl.create(:pedido, :datapedido => "2014-02-27")
    produto = FactoryGirl.create(:produto, :numeroee => "1234567")

    visit new_itensdopedido_path
    preencher_e_verificar_itensdopedido
   
  end


  scenario 'alterar itens do pedido' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :datapedido => "2014-02-27")
    produto = FactoryGirl.create(:produto, :numeroee => "1234567")
    
    itensdopedido = FactoryGirl.create(:itensdopedido, :pedido => pedido, :produto => produto)

    visit edit_itensdopedido_path(itensdopedido)
    preencher_e_verificar_itensdopedido

  end


  scenario 'excluir itens do pedido' do #, :javascript => true  do

    pedido = FactoryGirl.create(:pedido, :datapedido => "2014-02-27")
    produto = FactoryGirl.create(:produto, :numeroee => "1234567")
 
    itensdopedido = FactoryGirl.create(:itensdopedido, :pedido => pedido, :produto => produto)

    visit itensdopedidos_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_itensdopedido

    fill_in 'Item Pedido', :with => 'Item'
    fill_in 'Quantidade', :with => '40'
    
    select '2014-02-27', :from => 'Pedido'
    select '1234567', :from => 'Produto'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Item Pedido: Item'
    page.should have_content 'Quantidade: 40'
    page.should have_content 'Pedido: 2014-02-27'
    page.should have_content 'Produto: 1234567'    
  end   

end
