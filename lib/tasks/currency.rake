# require "xml/to/json"
namespace :currency do

  	desc "Update table currency"
  	task :update_or_create_table => [:environment] do
	    currencies_xml = Nokogiri::XML(open("http://www.cbr.ru/scripts/XML_daily.asp"))
	    currencies_hash = Hash.from_xml(currencies_xml.to_xml)
	    JSON.parse(currencies_hash.to_json).each do |key, value|
	    	value.each do |key, value|
	    		if "Valute" == key
		    		value.each do |currency|
		    			valute_name = ""
		    			valute_rate = ""
		    			currency.each do |key, value|
		    				if "Name" == key
		    					valute_name = value
		    				end
		    				if "Value" == key
		    					valute_rate = value
		    				end
		    			end
		    			currency = Currency.find_by(name: valute_name)
		    			if currency
		    				currency.update(rate: valute_rate)
		    				p "Currency updated"
		    			else
		    				Currency.create(name: valute_name, rate: valute_rate)
		    				p "Currency created"
		    			end
		    		end
		    	end
	    	end
	    end
  	end

  	desc "show table currency"
  	task :show_table => [:environment] do
  		Currency.all.each do |c|
  			p c.id.to_s + " --- " + c.name + " --- " + c.rate
  		end
  	end

  	desc "delete table currency"
  	task :delete_table => [:environment] do
  		Currency.delete_all
  		p "All record deleted"
  	end

end