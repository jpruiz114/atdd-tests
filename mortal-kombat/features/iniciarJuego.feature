Feature:
	Como jugador
	Quiero seleccionar personajes

Scenario: quiero ver el nombre del juego
	Given que abrí el juego
	Then debo ver "Mortal Kombat"

Scenario: quiero poder iniciar el juego
	Given que abrí el juego
	And seleccioné start
	Then debo ver "Choose your character"

Scenario: quiero poder seleccionar mi personaje
	Given que abrí el juego
	When seleccioné start
	And veo "Choose your character"
	Then debo ver "Pick your warrior"

Scenario: quiero poder seleccionar mi rival
	Given que abrí el juego
	When seleccioné start
	And veo "Choose your character"
	Then debo ver "Pick your enemy"

Scenario: quiero iniciar el combate
	Given que abrí el juego
	When seleccioné start
	And veo "Pick your warrior"
	Then debo ver "Kombat!"

Scenario: quiero seleccionar "Sub-Zero" como mi personaje
	Given que abrí el juego
	When seleccioné start
	And veo "Pick your warrior"
	Then debo ver "Sub-Zero"

Scenario: quiero seleccionar "Scorpion" como mi rival
	Given que abrí el juego
	When seleccioné start
	And veo "Pick your enemy"
	Then debo ver "Scorpion"
