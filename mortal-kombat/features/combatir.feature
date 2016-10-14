Feature:
	Como jugador quiero combatir mi oponente 
	para ganar una partida y tener la oportunidad de hacer un fatality

Scenario: Con un combate iniciado quiero poder dar un golpe alto
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	And veo "Fight!"
	And debo ver la vida "Sub-Zero: 100" y "Scorpion: 100"
	Then debo ver el panel de golpes de "personaje" con "golpe alto"

Scenario: Quiero herir a mi oponente con un golpe alto
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	And veo "Fight!"
	And debo ver la vida "Sub-Zero: 100" y "Scorpion: 100"
	And selecciono golpe alto de personaje
	Then la vida de oponente debe ser "Scorpion: 90"

Scenario: Cuando la vida del oponente se acabe quiero ganar el combate
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	And veo "Fight!"
	And debo ver la vida "Scorpion: 0"
	Then debo ver "Winner"

Scenario: Cuando gane el combate quiero ver la pantalla de Finish Him!
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	And veo "Fight!"
	And debo ver la vida "Scorpion: 0"
	And debo ver "Winner"
	And selecciono "Winner"
	Then debo ver "Finish Him"
