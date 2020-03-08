class CurrencyController < ApplicationController

	def currencies
    	@currencies = Currency.all
		render json: @currencies
  	end

  	def currency
    	@currency = Currency.find(params[:currency_id])
    	render json: @currency
  	end

end