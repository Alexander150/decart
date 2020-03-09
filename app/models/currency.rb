class Currency < ApplicationRecord

	def get_name
    	@name = self.name
		return @name
  	end

  	def get_rate
    	@rate = self.rate
    	return @rate
  	end

end