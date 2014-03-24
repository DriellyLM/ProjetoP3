# coding: utf-8
require 'spec_helper'

feature 'gerenciar itens da os' do

  scenario 'incluir itens da os' do #, :javascript => true  do
	
    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")
    servico = FactoryGirl.create(:servico, :tipodeservico => "XY")

    visit new_itensdaordemdeservico_path
    preencher_e_verificar_itensdaordemdeservico
   
  end


  scenario 'alterar itens da os' do #, :javascript => true  do

    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")
    servico = FactoryGirl.create(:servico, :tipodeservico => "XY")
    
    itensdaordemdeservico = FactoryGirl.create(:itensdaordemdeservico, :ordemdeservico => ordemdeservico, :servico => servico)

    visit edit_itensdaordemdeservico_path(itensdaordemdeservico)
    preencher_e_verificar_itensdaordemdeservico

  end


  scenario 'excluir itens da os' do #, :javascript => true  do

    ordemdeservico = FactoryGirl.create(:ordemdeservico, :descricaoservico => "XXXX")
    servico = FactoryGirl.create(:servico, :tipodeservico => "XY")
 
    itensdaordemdeservico = FactoryGirl.create(:itensdaordemdeservico, :ordemdeservico => ordemdeservico, :servico => servico)

    visit itensdaordemdeservicos_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_itensdaordemdeservico

    fill_in 'Itens OS', :with => 'Itens'
    fill_in 'Quantidade', :with => '30'
    
    select 'XXXX', :from => 'Ordem de Serviço'
    select 'XY', :from => 'Serviço'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Itens OS: Itens'
    page.should have_content 'Quantidade: 30'
    page.should have_content 'Ordem de Serviço: XXXX'
    page.should have_content 'Serviço: XY'    
  end   

end
