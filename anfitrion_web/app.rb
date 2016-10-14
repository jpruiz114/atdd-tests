require 'sinatra'
require 'better_errors'
require './lib/anfitrion'

configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

enable :sessions
set :session_secret, 'thisIsAKleerSecret'

get '/' do
	erb :index
end

post '/saludar' do
	anfitrion = Anfitrion.new params['idioma']
	session['nombre'] = anfitrion.saludar params['nombre'], params['hora'].to_i
	erb :saludar
end