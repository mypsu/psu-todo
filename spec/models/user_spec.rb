require 'spec_helper'

describe User do 

	describe "user associations" do
		before(:each) do
			@user = User.create(@attr)
			@project1 = FactoryGirl.create(:project, :user => @user)
		end
	end

	it "has a valid Factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "should be invalid without a username" do
		FactoryGirl.build(:user, username: nil).should_not be_valid
	end

	it "does not allow duplicate usernames per user" do
		FactoryGirl(:user, username: "james@bond.com")
		FactoryGirl.build(:user, username: "james@bond.com").should_not be_valid
	end

	it "should have a project attribute" do
			@user.should respond_to(:projects)
	end
end