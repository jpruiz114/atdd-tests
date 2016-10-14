class Amason

	SIN_DESCUENTO = 1
	DESCUENTOS = [0.97, 0.95, 0.92, 0.87]
	TOPES = [1000,5000,10000,15000]
	IVAS = {'ARG'=>1.1,'COL'=>1.16,'MX'=>1.18}

	def calcularPrecio valor, pais
		descuento = SIN_DESCUENTO
		(0..DESCUENTOS.size - 1).reverse_each do |i|

			if valor >= TOPES[i]
				descuento = DESCUENTOS[i]
				break
			end
		end

		(valor * descuento * IVAS[pais]).round 2
	end
end