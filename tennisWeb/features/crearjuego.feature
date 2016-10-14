Feature:
	Como arbitro de tennis
	Quiero iniciar una partida
	Para controlar el puntaje

Scenario: quiero un titulo de bienvenida
	Given que abrí la aplicación
	Then debo ver "Bienvenido al juego de tennis"

Scenario: quiero poder ingresar y ver los nombres de los jugadores en modo versus
	Given que abrí la aplicación
	When defina los nombres de los jugadores con "Federer" y "Nadal"
	And inice un juego
	Then debo ver "Federer vs Nadal"

Scenario: quiero poder ingresar y ver los nombres de los jugadores en modo versus (con otro orden)
	Given que abrí la aplicación
	When defina los nombres de los jugadores con "Del Potro" y "Murray"
	And inice un juego
	Then debo ver "Del Potro vs Murray"
