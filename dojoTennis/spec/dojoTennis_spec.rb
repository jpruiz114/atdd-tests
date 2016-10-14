require './dojoTennis'

describe DojoTennis do
	before do
		@dojoTennis = DojoTennis.new
	end
	it "Puntaje cuando jugador 1 tiene 0 y jugador 2 tiene 0 debe ser 0 - 0" do
		puntaje = @dojoTennis.score 0, 0
		expect(puntaje).to eq "0 - 0"
	end
	it "#Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 0 debe ser 15 - 0" do
		puntaje = @dojoTennis.score 1, 0
		expect(puntaje).to eq "15 - 0"
	end
	it "#Puntaje cuando jugador 1 tiene 2 y jugador 2 tiene 0 debe ser 30 - 0" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		expect(puntaje).to eq "30 - 0"
	end
	it "#Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 1 debe ser 15 - 15" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		expect(puntaje).to eq "15 - 15"
	end
	it "Puntaje cuando jugador 1 tiene 1 y jugador 2 tiene 2 debe ser 15 - 30" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		expect(puntaje).to eq "15 - 30"
	end
	it "Puntaje cuando jugador 1 tiene 4 y jugador 2 tiene 2 debe ser Win P1" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		expect(puntaje).to eq "Win P1"
	end
	it "Puntaje cuando jugador 1 tiene 2 y jugador 2 tiene 4 debe ser Win P2" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		expect(puntaje).to eq "Win P2"
	end
	it "Puntaje cuando jugador 1 tiene 3 y jugador 2 tiene 3 debe ser Deuce" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		expect(puntaje).to eq "Deuce"
	end
	it "Puntaje cuando jugador 1 tiene 4 y jugador 2 tiene 3 debe ser Adv P1" do
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 1, 0
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 0, 1
		puntaje = @dojoTennis.score 1, 0
		expect(puntaje).to eq "Adv P1"
	end

end
