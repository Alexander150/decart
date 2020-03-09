class CurrencyController < ApplicationController

	def get_currencies
    	@currencies = Currency.all
		render json: {currencies: @currencies}
  	end

  	def all
  		@currencies = Currency.all
  	end

  	def get_currency
    	@currency = Currency.find(params[:currency_id])
    	render json: {currency: @currency}
  	end

end