require "rails_helper"

describe Currency do
  before(:all) do
    @currency = Currency.new(name: "Доллар", rate: "12,34")
  end

  it 'has a name' do
    @currency.get_name.should eq "Доллар"
  end

  it 'has a rate' do
  	@currency.get_rate.should eq "12,34"
  end

end