# coding: utf-8
require 'spec_helper'

feature 'gerenciar email do funcionario' do

  scenario 'incluir email do funcionario' do #, :javascript => true  do
	
    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")

    visit new_emailfuncionario_path
    preencher_e_verificar_emailfuncionario
   
  end


  scenario 'alterar email do funcionario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
    
    emailfuncionario = FactoryGirl.create(:emailfuncionario, :funcionario => funcionario)

    visit edit_emailfuncionario_path(emailfuncionario)
    preencher_e_verificar_emailfuncionario

  end


  scenario 'excluir email do funcionario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
 
    emailfuncionario = FactoryGirl.create(:emailfuncionario, :funcionario => funcionario)

    visit emailfuncionarios_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_emailfuncionario

    fill_in 'Email', :with => 'funcionario@server.com'
    
    select 'Vitor Silva', :from => 'Funcionário'
    
    
    click_button 'Salvar'
    
    page.should have_content 'Email: funcionario@server.com'
    page.should have_content 'Funcionário: Vitor Silva'
    
    
  end   

end
