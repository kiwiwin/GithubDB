require_relative '../spec_helper'

describe User do
	let(:dummy_since) { 0 }

	before(:each) do
		User.stub(:get_response) do |since|
			open(File.dirname(__FILE__) + "/users.json").read
		end
		@users = User.get(:dummy_since)
		@user = @users[0]
	end

	it "should return 100 users" do
		@users.should be_a_kind_of(Array)
		@users.size.should == 100
	end

	it "should return _id equal to id" do
		@user["_id"].should == @user["id"]
	end
end
