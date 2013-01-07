require 'open-uri'
require 'openssl'
require 'json'

class User
	class << self
		def get(since)
			uri = "https://api.github.com/users?since=#{since}"
			JSON.parse(get_response(uri))		
		end

		def get_response(uri)
			open(uri, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
		end
	end
end
