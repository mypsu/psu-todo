require 'spec_helper'

describe "UserPages" do
  describe "Create Account" do
	it "should have content for Creating Account"
	   visit 'user'
	   page.should have_selector('h1',    text: 'Create Account') 
  end
end
