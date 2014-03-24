# coding: utf-8
require 'spec_helper'

feature 'gerenciar funcionario' do

  scenario 'incluir funcionario' do #, :javascript => true  do
	
    cargofuncionario = FactoryGirl.create(:cargofuncionario, :cargofuncionario => "Auxiliar Administrativo")
    enderecofuncionario = FactoryGirl.create(:enderecofuncionario, :logradouro => "Rua Antônio Silva")

    visit new_funcionario_path
    preencher_e_verificar_funcionario
   
  end


  scenario 'alterar funcionario' do #, :javascript => true  do

    cargofuncionario = FactoryGirl.create(:cargofuncionario, :cargofuncionario => "Auxiliar Administrativo")
    enderecofuncionario = FactoryGirl.create(:enderecofuncionario, :logradouro => "Rua Antônio Silva")
    
    funcionario = FactoryGirl.create(:funcionario, :cargofuncionario => cargofuncionario, :enderecofuncionario => enderecofuncionario)

    visit edit_funcionario_path(funcionario)
    preencher_e_verificar_funcionario

  end


  scenario 'excluir funcionario' do #, :javascript => true  do

    cargofuncionario = FactoryGirl.create(:cargofuncionario, :cargofuncionario => "Auxiliar Administrativo")
    enderecofuncionario = FactoryGirl.create(:enderecofuncionario, :logradouro => "Rua Antônio Silva")
 
    funcionario = FactoryGirl.create(:funcionario, :cargofuncionario => cargofuncionario, :enderecofuncionario => enderecofuncionario)

    visit funcionarios_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_funcionario

    fill_in 'Nome', :with => 'Vitor Silva'
    fill_in 'CPF', :with => '123.456.789-00'
    fill_in 'Sexo', :with => 'Masculino'
    fill_in 'Data de Nascimento', :with => '1990-10-03'
    
    select 'Auxiliar Administrativo', :from => 'Cargo Funcionário'
    select "Rua Antônio Silva", :from => 'Endereço Funcionário'
    
    click_button 'Salvar'
    
    page.should have_content 'Nome: Vitor Silva'
    page.should have_content 'CPF: 123.456.789-00'
    page.should have_content 'Sexo: Masculino'
    page.should have_content 'Data de Nascimento: 1990-10-03'
    page.should have_content 'Cargo Funcionário: Auxiliar Administrativo'
    page.should have_content 'Endereço Funcionário: Rua Antônio Silva'
    
  end   

end
