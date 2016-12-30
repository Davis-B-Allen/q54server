# myapp.rb
require 'sinatra/base'

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/api/cards' do
      content_type :json
      response['Access-Control-Allow-Origin'] = '*'
      File.read('cards.json')
  end
end
