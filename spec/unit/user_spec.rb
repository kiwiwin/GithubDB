require_relative '../spec_helper'

describe User do
	before(:each) do
		User.stub(:get_response) do |since|
			open(File.dirname(__FILE__) + "/users.json").read
		end
	end

	it "should return 100 users" do
		users = User.get(0)
		users.should be_a_kind_of(Array)
		users.each { |user| user.should be_a_kind_of(Hash) }
	end
end
