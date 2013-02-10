require 'spec_helper'

describe StaticPagesController do

  describe "GET 'user'" do
    it "returns http success" do
      get 'user'
      response.should be_success
    end
  end

  describe "GET 'project'" do
    it "returns http success" do
      get 'project'
      response.should be_success
    end
  end

  describe "GET 'report'" do
    it "returns http success" do
      get 'report'
      response.should be_success
    end
  end

end
