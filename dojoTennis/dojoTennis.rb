class DojoTennis
	PUNTAJE_PARA_GANAR = 4
	PUNTAJE_PARA_DEUCE = 3
	PUNTAJE = {0=>'0',1=>'15', 2 => '30', 3=> '40', 4 => 'Win'}
	@puntaje1 = 0
	@puntaje2 = 0

	@estadoJuego = 'En curso'

	def score puntaje1 , puntaje2
		@puntaje1 = @puntaje1.to_i + puntaje1.to_i
		@puntaje2 = @puntaje2.to_i + puntaje2.to_i
		
		if @estadoJuego == 'Deuce'
			if @puntaje1 == PUNTAJE_PARA_GANAR 
				'Adv P1'
		end

		if @puntaje1 == PUNTAJE_PARA_DEUCE and @puntaje2 == PUNTAJE_PARA_DEUCE
			@estadoJuego = 'Deuce'
			"Deuce"
		elsif @puntaje1 == PUNTAJE_PARA_GANAR 
			PUNTAJE[@puntaje1] + ' P1'
		elsif @puntaje2 == PUNTAJE_PARA_GANAR
			PUNTAJE[@puntaje2] + ' P2'
		else
			PUNTAJE[@puntaje1] + ' - ' + PUNTAJE[@puntaje2]	
		end
		
	end

end