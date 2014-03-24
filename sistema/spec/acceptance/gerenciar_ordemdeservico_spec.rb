# coding: utf-8
require 'spec_helper'

feature 'gerenciar ordem de serviço' do

  scenario 'incluir ordem de serviço' do #, :javascript => true  do
	
    usuario = FactoryGirl.create(:usuario, :login => "Vitor_S")
    pontoremoto = FactoryGirl.create(:pontoremoto, :endereco => "ABCD")

    visit new_ordemdeservico_path
    preencher_e_verificar_ordemdeservico
   
  end


  scenario 'alterar ordem de serviço' do #, :javascript => true  do

    usuario = FactoryGirl.create(:usuario, :login => "Vitor_S")
    pontoremoto = FactoryGirl.create(:pontoremoto, :endereco => "ABCD")
    
    ordemdeservico = FactoryGirl.create(:ordemdeservico, :usuario => usuario, :pontoremoto => pontoremoto)

    visit edit_ordemdeservico_path(ordemdeservico)
    preencher_e_verificar_ordemdeservico

  end


  scenario 'excluir ordem de serviço' do #, :javascript => true  do

    usuario = FactoryGirl.create(:usuario, :login => "Vitor_S")
    pontoremoto = FactoryGirl.create(:pontoremoto, :endereco => "ABCD")
 
    ordemdeservico = FactoryGirl.create(:ordemdeservico, :usuario => usuario, :pontoremoto => pontoremoto)

    visit ordemdeservicos_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_ordemdeservico

    fill_in 'Descrição do Serviço', :with => 'XXXX'
    fill_in 'Descrição do Produto', :with => 'YYYY'
    fill_in 'Data Inicial da OS', :with => '2014-03-24'
    fill_in 'Data Final da OS', :with => '2014-03-24'
    
    select 'Vitor_S', :from => 'Usuário'
    select 'ABCD', :from => 'Ponto Remoto'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Descrição do Serviço: XXXX'
    page.should have_content 'Descrição do Produto: YYYY'
    page.should have_content 'Data Inicial da OS: 2014-03-24'
    page.should have_content 'Data Final da OS: 2014-03-24'
    page.should have_content 'Usuário: Vitor_S'
    page.should have_content 'Ponto Remoto: ABCD'
    
  end   

end
