class Anfitrion

	attr_accessor :idioma

	def initialize idioma = "ES"
		@idioma = idioma
		@hora = Time.now.hour
		
	end

	def saludar nombre="Mundo", hora = @hora
		
		if @idioma == "ES"

			if hora > 11 and hora <= 18

				"Buenas tardes #{nombre}"

			elsif hora > 18

				"Buenas noches #{nombre}"
				
			else
				"Buenos dias #{nombre}"
			end

		elsif @idioma == "EN"

			if hora > 11 and hora <= 18

				"Good afternoon #{nombre}"

			elsif hora > 18

				"Good evening #{nombre}"
				
			else
				"Good morning #{nombre}"
			end

		elsif @idioma == "FR"

			if hora > 11 and hora <= 18

				"Bonsoir #{nombre}"

			elsif hora > 18

				"Bonne nuit #{nombre}"
				
			else
				"Bonjour #{nombre}"
			end

		else
			"No conozco ese idioma"
		end
	end
end

anfitrion = Anfitrion.new "FR"
puts anfitrion.idioma="EN"
puts anfitrion.saludar "Esteban"