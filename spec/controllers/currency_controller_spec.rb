require "rails_helper"

describe CurrencyController do
  before(:all) do
    @currency = Currency.new(name: "Доллар", rate: "12,34")
  end

  it 'has a name and a rate' do
    @currency.currencies.empty?.should false
    # @currency.rate.empty?.should be_false
  end
end