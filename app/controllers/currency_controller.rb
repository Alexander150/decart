class CurrencyController < ApplicationController

	def index
  end

  def all
	end

	def show
	end

	def get_currency
  	@currency = Currency.find(params[:currency_id])
  	render json: {currency: @currency}
	end

  def get_currencies
    @currencies = Currency.all
    render json: {currencies: @currencies}
  end

end