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
end