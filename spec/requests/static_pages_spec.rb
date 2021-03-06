require 'spec_helper'

describe "StaticPages" do
  describe "GET 'user'" do
    it "returns http success" do
      visit '/users/1'
      page.should have_content('users')
    end
  end

  describe "GET 'project'" do
    it "returns http success" do
      visit '/projects/1'
      page.should have_content('Projects')
    end
  end

  describe "GET 'home'" do
    it "returns http success" do
      visit '/home'
      page.should have_content('Register')
    end
  end

  describe "GET 'task'" do
    it "returns http success" do
      visit '/task'
      page.should have_content('task')
    end
  end

  describe "GET 'session'" do
    it "returns http success" do
      visit '/sessions/1'
      page.should have_content('username')
    end
  end

end
