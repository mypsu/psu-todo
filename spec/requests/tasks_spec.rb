require 'spec_helper'

describe User do
  before do
    @user = User.new(username: "john@gmail.com", password: "abcdef" )
  end

  subject { @user }

  it {should respond_to(:username)}
  it {should respond_to(:password)}

  describe "username is too long" do
    before {@user.username = "x" * 60}
    it {should_not be_valid}
  end

  describe "when username format is invalid" do
    it "should be invalid" do
      username = %w[eviluser,name bad\user wron?guser]
      username.each do |invalid_name|
        @user.username = invalid_name
        @user.should_not be_valid
    end
   end
  end

  describe "when username format is valid" do
    it "should be valid" do
      username = %w[testuser@gmail.com bill123@hotmail.com john@yahoo.com]
      username.each do |valid_name|
        @user.username = valid_name
        @user.should be_valid
    end
   end
  end
end
