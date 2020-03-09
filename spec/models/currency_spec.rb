require "rails_helper"

describe Currency do
  before(:all) do
    @currency = Currency.new(name: "Доллар", rate: "12,34")
  end

  it 'is an instance of Currency' do
    subject.should be_an_instance_of Currency
    subject.should be_a_kind_of Currency
  end

  it 'has a name' do
    @currency.get_name.should eq "Доллар"
  end

  it 'has a rate' do
  	@currency.get_rate.should eq "12,34"
  end

end