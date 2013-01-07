require 'yaml'
require 'mongo'

module Mongo
	class DB
		class << self
			def open_db(yml_filename)
				config = YAML.load_file(yml_filename)
				host = config["host"]
				port = config["port"].to_i
				MongoClient.new(host, port)[config["db"]]
			end
		end
	end
end
