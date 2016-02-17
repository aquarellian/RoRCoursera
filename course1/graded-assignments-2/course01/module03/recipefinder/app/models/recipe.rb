class Recipe
include HTTParty
debug_output $stdout

default_params key:ENV["FOOD2FORK_KEY"]
key_value = ENV["FOOD2FORK_KEY"]
hostport = ENV["FOOD2FORK_SERVER_AND_PORT"] || "www.food2fork.com"
base_uri "http://#{hostport}/api"

format :json

def self.for keyword
  get('/search', query: {q: keyword})['recipes']
end

end
