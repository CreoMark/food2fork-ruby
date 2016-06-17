module Food2Fork
	class Recipe < Document
    def self.get(recipe_id)
      Client.make_request(Recipe, "/get", {rId: recipe_id})
    end

    def self.search(params = {})
      Client.make_request(Recipe, "/search", params)
    end
	end
end