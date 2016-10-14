require 'sinatra'
require 'better_errors'

require './lib/game'

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
	#"Federer vs Nadal"

	session["game"] = Game.new

	session["jugadores"] = "#{params['txt-jugador1']} vs #{params['txt-jugador2']}"
	#session["score"] = "0-0"

	erb :juego
end

#post '/marcar/jugador1' do
#	if session["score"] == "15-0"
#		session["score"] = "30-0"
#	else
#		session["score"] = "15-0"
#	end

#	erb :juego
#end

post '/marcar/:jugador' do |jugador|
	session["game"].marcar jugador
	erb :juego
end
