require './calculadora'

describe Calculadora do
	it "al sumar 1 y 3 debe resultar 4" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.sumar 1,3
		#assert
		expect(resultado).to eq 4
		
	end
	it "al sumar 3 y 2 debe resultar 5" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.sumar 3,2
		#assert
		expect(resultado).to eq 5
		
	end
	it "al dividir 1 entre 0 debe resultar nil" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.dividir 1,0
		#assert
		expect(resultado).to eq nil
	end

	it "al dividir 4 entre 2 debe resultar 2" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.dividir 4,2
		#assert
		expect(resultado).to eq 2
	end

	it "al dividir 2 entre 4 debe resultar 0.5" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.dividir 2,4
		#assert
		expect(resultado).to eq 0.5
	end

	it "al dividir 10 entre 3 debe resultar 3.3333333" do
		#arrange
		calculadora = Calculadora.new
		#act
		resultado = calculadora.dividir 10,3
		#assert
		expect(resultado).to eq 3.3333333
	end

end

#3 + 2 debe ser 5
#-1 + -5 debe ser -6
#1 / 0 debe ser indefinido
#4 / 2 debe ser 2
#2 / 4 debe ser 0.5
#10 / 3 debe ser 3.3333333