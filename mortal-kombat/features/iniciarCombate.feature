Feature:
	Como jugador
	Quiero iniciar un combate

Scenario: quiero iniciar el combate
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	Then debo ver "Fight!"

Scenario: quiero ver la vida de mi personaje
	Given que abrí el juego
	When seleccioné start
	And veo "Sub-Zero"
	And veo "Scorpion"
	And selecciono "Kombat!"
	And veo "Fight!"
	Then debo ver la vida "Sub-Zero: 100" y "Scorpion: 100"
