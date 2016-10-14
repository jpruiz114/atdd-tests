require './amason'
describe Amason do
	before do 
		#arrange
		@amason = Amason.new
	end
	it "al gastar 500 en ar debo pagar 550" do 
		#act
		precioTotal = @amason.calcularPrecio 500, "ARG"
		#assert
		expect(precioTotal).to eq 550

	end
	it "al gastar 600 en ar debo pagar 660" do 
		#act
		precioTotal = @amason.calcularPrecio 600, "ARG"
		#assert
		expect(precioTotal).to eq 660

	end
	it "al gastar 1000 en ar debo pagar 1067" do
		#act
		precioTotal = @amason.calcularPrecio 1000, "ARG"
		#assert
		expect(precioTotal).to eq 1067
	end

	it "al gastar 6000 en ar debo pagar 6270" do
		#act
		precioTotal = @amason.calcularPrecio 6000, "ARG"
		#assert
		expect(precioTotal).to eq 6270
	end

	it "al gastar 17000 en ar debo pagar 16269" do
		#act
		precioTotal = @amason.calcularPrecio 6000, "ARG"
		#assert
		expect(precioTotal).to eq 6270
	end

	it "al gastar 3000 en col debo pagar 3375.6" do
		#act
		precioTotal = @amason.calcularPrecio 3000, "COL"
		#assert
		expect(precioTotal).to eq 3375.6
	end

	it "al gastar 7500 en mx debo pagar 8407.5" do
		#act
		precioTotal = @amason.calcularPrecio 7500, "MX"
		#assert
		expect(precioTotal).to eq 8407.5
	end
end
# 
# al gastar 3000 en col debo pagar 3375.6

# al gastar 7500 en mx debo pagar 8407.5
# al gastar 12000 en uy debo pagar 12530.4
# al gastar 17000 en ar debo pagar 16269