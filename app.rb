require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    send_file "pergunta.html"
  end

  get '/grafico_linha' do
    send_file "grafico_linha.html"
  end

  get '/grafico_barra' do
    send_file "grafico_barra.html"
  end

  get '/grafico_pizza' do
    send_file "grafico_pizza.html"
  end
end
