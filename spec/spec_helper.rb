require 'rspec/core'

Dir[File.dirname(__FILE__) + "/../lib/*.rb"].each do |source_file|
	require source_file
end


def fixture(fixture_name)
	File.dirname(__FILE__) + "/fixture/#{fixture_name}"
end