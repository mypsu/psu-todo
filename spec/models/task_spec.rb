require 'spec_helper'

describe Task do

before(:each) do
	@project = FactoryGirl.create(:project)
	@attr = {:user_id => "@project.user_id", :name => "testproject1"}
end

it "should create a new instance given valid attributes" do
	@project.tasks.create!(@attr)
end

describe "task associations" do

	before(:each) do
		@task = @project.tasks.create(@attr)
	end

	it "should have a project attribute" do
		@task.should respond_to(:project)
	end

	it "should have the right associated project" do
		@task.project_id.should == @project.id
		@task.project.should == @project
	end
end

end


