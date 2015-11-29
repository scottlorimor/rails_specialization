class Recipe
	include HTTParty

  key_value = ENV["FOOD2FORK_KEY"]
  hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params key: ENV["FOOD2FORK_KEY"] = "0b60c16dede196def573a938373e39cb"
  format :json

	def self.for keyword
		get("/search", query: {q: keyword})["recipes"]
	end

end