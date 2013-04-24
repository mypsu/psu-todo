require 'spec_helper'

describe Project do

before(:each) do
	@user = FactoryGirl.create(:user)
	@attr = {:user_id => "@user.user_id", :name => "testproject1"}
end

it "should create a new instance given valid attributes" do
	@user.projects.create!(@attr)
end

describe "user associations" do

	before(:each) do
		@project = @user.projects.create(@attr)
	end

	it "should have a user attribute" do
		@project.should respond_to(:user)
	end

	it "should have the right associated user" do
		@project.user_id.should == @user.user_id
		@project.user.should == @user
	end
end

end


