class Calculadora
	def sumar valorUno, valorDos
		valorUno + valorDos
	end
	def dividir valorUno, valorDos
		
			resultado = (valorUno.to_f / valorDos).round 7 unless valorDos == 0
		
	end
end