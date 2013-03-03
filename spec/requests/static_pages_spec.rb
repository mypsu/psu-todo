require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
    it "should have content in home page" do
	visit root_path
	page.should have_content('An application by PSU SWENG Team #4')
    end
  end
  describe "Home Page" do
    it "should have header tag in home page" do
	visit root_path 
	page.should have_selector('h1', :text=> 'PSU To Do Projects')
    end
  end

  describe "Projects Page" do
    it "should have content in home page" do
	visit project_path
	page.should have_content('Projects')
    end
  end
  describe "My Tasks Page" do
    it "should have content in home page" do
	visit task_path 
	page.should have_content('Task')
    end
  end
  describe "User Page" do
    it "should have content in home page" do
	visit user_path
	page.should have_content('Users')
    end
  end
end
