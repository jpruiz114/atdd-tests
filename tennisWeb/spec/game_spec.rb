require './lib/game'

describe Game do
	before do
		@game = Game.new
	end
	it "Puntaje cuando jugador 1 tiene 0 y jugador 2 tiene 0 debe ser 0 - 0" do
		@game.marcar ''
		expect(@game.score).to eq "0-0"
	end

	it "Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 0 debe ser 15 - 0" do
		@game.marcar 'jugador1'
		expect(@game.score).to eq "15-0"
	end

	it "Puntaje cuando jugador 1 tiene 2 y jugador 2 tiene 0 debe ser 30 - 0" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		expect(@game.score).to eq "30-0"
	end

	it "Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 1 debe ser 15 - 15" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador2'
		expect(@game.score).to eq "15-15"
	end

	it "Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 2 debe ser 15 - 30" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		expect(@game.score).to eq "15-30"
	end

	it "Puntaje cuando jugador 1 tiene 4 y jugador 2 tiene 2 debe ser Win P1" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		
		expect(@game.score).to eq "Win P1"
	end

	it "Puntaje cuando jugador 1 tiene 2 y jugador 2 tiene 4 debe ser Win P2" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'

		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		
		expect(@game.score).to eq "Win P2"
	end

	it "Puntaje cuando jugador 1 tiene 3 y jugador 2 tiene 3 debe ser Deuce" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		expect(@game.score).to eq "Deuce"
	end

	it "Puntaje cuando jugador 1 tiene 4 y jugador 2 tiene 3 debe ser Adv P1" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'

		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'

		@game.marcar 'jugador1'
		expect(@game.score).to eq "Adv P1"
	end

	it "Puntaje cuando jugador 1 tiene 3 y jugador 2 tiene 4 debe ser Adv P2" do
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'
		@game.marcar 'jugador1'

		@game.marcar 'jugador2'
		@game.marcar 'jugador2'
		@game.marcar 'jugador2'

		@game.marcar 'jugador2'
		expect(@game.score).to eq "Adv P2"
	end
end
