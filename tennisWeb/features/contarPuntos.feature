#language: es
Característica:
	Como árbitro de tennis
	Quiero poder contar los puntos de los jugadores
	Para determinar quién el ganador

Escenario: iniciar en 0-0
	Dado que inicie un juego
	Entonces el marcador debe ser "0-0"

Escenario: el jugador 1 marca un punto
	Dado que inicie un juego
	Cuando el "jugador1" marca
	Entonces el marcador debe ser "15-0"

Escenario: el jugador 1 marca dos punto
	Dado que inicie un juego
	Cuando el "jugador1" marca
	Y el "jugador1" marca
 	Entonces el marcador debe ser "30-0"
