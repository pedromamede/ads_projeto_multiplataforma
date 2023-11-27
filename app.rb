require 'sinatra'

class Application < Sinatra::Base
  get '/' do
    send_file "views/pergunta.html"
  end

  get '/grafico_linha' do
    send_file "views/grafico_linha.html"
  end

  get '/grafico_barra' do
    send_file "views/grafico_barra.html"
  end

  get '/grafico_pizza' do
    send_file "views/grafico_pizza.html"
  end
end
