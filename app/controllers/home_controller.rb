class HomeController < ApplicationController
	def index
	end

	def calcular
		@alcool = params[:alcool] 
		@gasolina = params[:gasolina]
		if @alcool.to_f === @gasolina.to_f 
			render json: "Dá na mesma  ¯\_(ツ)_/¯"
		else
			if @alcool > @gasolina
			render json: "Gasolina" 
		else
			render json: "Àlcool" 
		end
		end
	end
end
