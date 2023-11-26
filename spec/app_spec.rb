# encoding: UTF-8
# spec/app_spec.rb
require_relative '../app'
require 'rack/test'
require 'rspec'

RSpec.describe 'Aplicacao ADS projeto multiplataforma' do
  include Rack::Test::Methods

  def app
    Application.new
  end

  it 'pagina inicial / carrega HTML o conteudo esperado' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body.force_encoding('UTF-8')).to include('ADS UNIFOR - Projeto Multiplataforma 2')
    expect(last_response.body.force_encoding('UTF-8')).to include('Bem vindo ao assistente de escolha e criação de gráficos')
    expect(last_response.body.force_encoding('UTF-8')).to include('Responda a pergunta que mais se encaixa com o tipo de situação ou problema que você deseja representar em um gráfico:')
  end

  it 'pagina /grafico_linha carrega HTML o conteudo esperado' do
    get '/grafico_linha'
    expect(last_response).to be_ok
    expect(last_response.body.force_encoding('UTF-8')).to include('ADS UNIFOR - Projeto Multiplataforma 2')
    expect(last_response.body.force_encoding('UTF-8')).to include('Gráfico de linha')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Reais')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Janeiro, Fevereiro, Março, Abril, Junho')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: 10, 20, 15, 30, 25')
  end

  it 'pagina /grafico_barra carrega HTML o conteudo esperado' do
    get '/grafico_barra'
    expect(last_response).to be_ok
    expect(last_response.body.force_encoding('UTF-8')).to include('ADS UNIFOR - Projeto Multiplataforma 2')
    expect(last_response.body.force_encoding('UTF-8')).to include('Gráfico de barras (ou colunas)')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Reais')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Janeiro, Fevereiro, Março, Abril, Junho')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: 10, 20, 15, 30, 25')
  end

  it 'pagina /grafico_pizza carrega HTML o conteudo esperado' do
    get '/grafico_pizza'
    expect(last_response).to be_ok
    expect(last_response.body.force_encoding('UTF-8')).to include('ADS UNIFOR - Projeto Multiplataforma 2')
  expect(last_response.body.force_encoding('UTF-8')).to include('Gráfico pizza')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Horas por mês')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: Sono, Trabalho, Sono , Lazer')
    expect(last_response.body.force_encoding('UTF-8')).to include('Exemplo: 200, 180, 25, 30')
  end
end
