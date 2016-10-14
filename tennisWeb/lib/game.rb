 class Game
	PUNTOS = [0, 15, 30, 40]

	def initialize
		@jugador1 = 0
		@jugador2 = 0
	end

	def score

		if @jugador1 == @jugador2 && @jugador1 >= 3
			return "Deuce"
		
		#elsif @jugador1 > 3 && (@jugador1 - @jugador2 == 1) 
		#	return "Adv P1"
		#elsif @jugador1 > 3 && (@jugador1 - @jugador2 > 1)
		#	return "Win P1"
		
		#elsif @jugador2 > 3 && (@jugador2 - @jugador1 == 1) 
		#	return "Adv P2"
		#elsif @jugador2 > 3 && (@jugador2 - @jugador1 > 1)
		#	return "Win P2"

		elsif @jugador1 > 3
			if @jugador1 - @jugador2 == 1
				return "Adv P1"
			elsif @jugador1 - @jugador2 > 1
				return "Win P1"
			end
		elsif @jugador2 > 3
			if @jugador2 - @jugador1 == 1
				return "Adv P2"
			elsif @jugador2 - @jugador1 > 1
				return "Win P2"
			end
		end

		"#{PUNTOS[@jugador1]}-#{PUNTOS[@jugador2]}"
	end

	def marcar jugador
		if jugador == "jugador1"
			@jugador1 += 1
		end

		if jugador == "jugador2"
			@jugador2 += 1
		end
	end
end
