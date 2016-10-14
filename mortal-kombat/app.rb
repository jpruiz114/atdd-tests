require 'sinatra'
require 'better_errors'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb :index
end

post '/iniciar' do
	erb :characters
end

post '/combate' do
	session["personaje"] = params['personaje']
	session["oponente"] = params['oponente']

	erb :combat
end
