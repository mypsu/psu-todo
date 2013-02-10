require 'spec_helper'

describe "StaticPages" do

  describe "Reports Page" do
    it "should have content in reports page" do
	visit '/static_pages/report'
	page.should have_content('Reports')
    end
  end
  describe "Projects Page" do
    it "should have content in home page" do
	visit '/static_pages/project'
	page.should have_content('Projects')
    end
  end
  describe "User Page" do
    it "should have content in home page" do
	visit '/static_pages/user'
	page.should have_content('Users')
    end
  end
end
