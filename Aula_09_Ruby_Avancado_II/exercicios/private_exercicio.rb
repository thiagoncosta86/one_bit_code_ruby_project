class Carro
	public
	def get_km(param_1)
		puts find_km(param_1)
	end

	private
	def find_km(param_2)
		padrao = /\d{2}km\\h/
		return param_2.match(padrao)
	end
end

car = Carro.new
car.get_km("Um fusca de cor amarela viaja a 80km\\h")
