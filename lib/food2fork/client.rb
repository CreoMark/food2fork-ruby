module Food2Fork
	module Client
		include HTTParty

		base_uri "http://food2fork.com/api/"
    format :json

    def self.convert_query_to_url(params)
      params.map do |k,v|
        "&#{k}=#{v}"
      end.join
    end

    def self.make_request(klass, endpoint, params = {})
      query_url = convert_query_to_url(params)
      result = get("#{endpoint}?key=#{ENV['FOOD2FORK_API_KEY']}#{query_url}")
      parsed_result = JSON.parse(result.body)
    	if parsed_result["recipes"] && parsed_result["recipes"].class == Array
	      objects = parsed_result["recipes"].map do |result|
	        klass.new(result)
	      end
    		objects.length == 1 ? objects.first : objects
	    elsif parsed_result["recipe"].class == Hash
	      klass.new(result)
      else
        parsed_result
	    end
    end
	end
end