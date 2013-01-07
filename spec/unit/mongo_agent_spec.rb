require_relative '../spec_helper'

describe Mongo::DB do
	before(:each) do
		@db = Mongo::DB.open_db(File.dirname(__FILE__) + "/mongo_test.yml")
		@client = @db.connection
	end

	it "should return localhost as server name" do
		@client.host.should == "localhost"
	end

	it "should return 27017 as port number" do
		@client.port.should == 27017
	end

	it "should return mongo_test as db name" do
		@db.name.should == "mongo_test"
	end

end
