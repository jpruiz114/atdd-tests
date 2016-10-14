require './anfitrion.rb'
describe Anfitrion do
	it " debe darle buenos dias a Jose en español" do 
		#arrange
		anfitrion = Anfitrion.new "ES"
		#act
		resultado = anfitrion.saludar "Jose", 11
		#assert
		expect(resultado).to eq "Buenos dias Jose"
	end

	it " debe darle buenos dias a Jose en ingles" do 
		#arrange
		anfitrion = Anfitrion.new "EN"
		#act
		resultado = anfitrion.saludar "Jose", 11
		#assert
		expect(resultado).to eq "Good morning Jose"
	end	

	it " debe darle buenos dias a Jose en frances" do 
		#arrange
		anfitrion = Anfitrion.new "FR"
		#act
		resultado = anfitrion.saludar "Jose", 11
		#assert
		expect(resultado).to eq "Bonjour Jose"
	end	

	it " debe darle buenas tardes a Jose en español" do 
		#arrange
		anfitrion = Anfitrion.new "ES"
		#act
		resultado = anfitrion.saludar "Jose", 14
		#assert
		expect(resultado).to eq "Buenas tardes Jose"
	end

	it " debe darle buenas tardes a Jose en ingles" do 
		#arrange
		anfitrion = Anfitrion.new "EN"
		#act
		resultado = anfitrion.saludar "Jose", 14
		#assert
		expect(resultado).to eq "Good afternoon Jose"
	end	

	it " debe darle buenas tardes a Jose en frances" do 
		#arrange
		anfitrion = Anfitrion.new "FR"
		#act
		resultado = anfitrion.saludar "Jose", 14
		#assert
		expect(resultado).to eq "Bonsoir Jose"
	end	

	it " debe darle buenas noches a Jose en español" do 
		#arrange
		anfitrion = Anfitrion.new "ES"
		#act
		resultado = anfitrion.saludar "Jose", 19
		#assert
		expect(resultado).to eq "Buenas noches Jose"
	end

	it " debe darle buenas noches a Jose en ingles" do 
		#arrange
		anfitrion = Anfitrion.new "EN"
		#act
		resultado = anfitrion.saludar "Jose", 19
		#assert
		expect(resultado).to eq "Good evening Jose"
	end	

	it " debe darle buenas noches a Jose en frances" do 
		#arrange
		anfitrion = Anfitrion.new "FR"
		#act
		resultado = anfitrion.saludar "Jose", 19
		#assert
		expect(resultado).to eq "Bonne nuit Jose"
	end	


end