# coding: utf-8
require 'spec_helper'

feature 'gerenciar usuario' do

  scenario 'incluir usuario' do #, :javascript => true  do
	
    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
    niveldeacesso= FactoryGirl.create(:niveldeacesso, :descricaonivel => "XXX")

    visit new_usuario_path
    preencher_e_verificar_usuario
   
  end


  scenario 'alterar usuario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
    niveldeacesso= FactoryGirl.create(:niveldeacesso, :descricaonivel => "XXX")
    
    usuario = FactoryGirl.create(:usuario, :funcionario => funcionario, :niveldeacesso => niveldeacesso)

    visit edit_usuario_path(usuario)
    preencher_e_verificar_usuario

  end


  scenario 'excluir usuario' do #, :javascript => true  do

    funcionario = FactoryGirl.create(:funcionario, :nome => "Vitor Silva")
    niveldeacesso= FactoryGirl.create(:niveldeacesso, :descricaonivel => "XXX")
 
    usuario = FactoryGirl.create(:usuario, :funcionario => funcionario, :niveldeacesso => niveldeacesso)

    visit usuarios_path
    click_link 'Excluir'  
    
  end


  def preencher_e_verificar_usuario

    fill_in 'Login', :with => 'Vitor_S'
    fill_in 'Senha', :with => 'secret077'
    fill_in 'Ativo', :with => 'X'

    select "Vitor Silva", :from => 'Funcionário'
    select "XXX", :from => 'Nível de Acesso'
    
    click_button 'Salvar'
    
    page.should have_content 'Login: Vitor_S'
    page.should have_content 'Senha: secret077'
    page.should have_content 'Ativo: X'
    page.should have_content 'Funcionário: Vitor Silva'
    page.should have_content 'Nível de Acesso: XXX'
    
  end   

end
