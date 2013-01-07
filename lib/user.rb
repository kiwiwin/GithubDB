require 'open-uri'
require 'openssl'
require 'json'

class User
	class << self
		def get(since)
			uri = "https://api.github.com/users?since=#{since}"
			users = JSON.parse(get_response(uri))
			users.collect { |user| user["_id"] = user["id"]; user }
		end

		def get_response(uri)
			open(uri, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
		end
	end
end
