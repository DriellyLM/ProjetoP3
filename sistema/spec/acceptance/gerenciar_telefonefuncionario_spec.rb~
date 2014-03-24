# coding: utf-8
require 'spec_helper'

feature 'gerenciar telefone do funcionario' do

  scenario 'incluir telefone do funcionario' do #, :javascript => true  do
	
    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")

    visit new_telefonefuncionario_path
    preencher_e_verificar_telefonefuncionario
   
  end


  scenario 'alterar telefone do funcionario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
    
    telefonefuncionario = FactoryGirl.create(:telefonefuncionario, :funcionario => funcionario)

    visit edit_telefonefuncionario_path(telefonefuncionario)
    preencher_e_verificar_telefonefuncionario

  end


  scenario 'excluir telefone do funcionario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
 
    telefonefuncionario = FactoryGirl.create(:telefonefuncionario, :funcionario => funcionario)

    visit telefonefuncionarios_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_telefonefuncionario

    fill_in 'Número do Telefone', :with => '2727-1234'
    
    select 'Vitor Silva', :from => 'Funcionário'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Número do Telefone: 2727-1234'
    page.should have_content 'Funcionário: Vitor Silva'
    
    
  end   

end
