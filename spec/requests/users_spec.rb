require 'spec_helper'

describe User do
  before do
    @user = User.new(username: "john@gmail.com", password: "abcdef" )
  end

  subject { @user }



  describe "when user model has valid fields" do
    it {should respond_to(:username)}
    it {should respond_to(:password)}
    it {should respond_to(:crazy)}
  end


  describe "when username is too long" do
    let(:user) { FactoryGirl.create(:user) }
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

  describe "when password has too many repeated chars" do
    before {@user.password = "zzzabc" }
    it {should_not be_valid}
  end

  describe "when password is same as username" do
    before {@user.password = @user.username }
    it {should_not be_valid}
  end

  describe "when password is too short" do
    before {@user.password = "x" * 5}
    it {should_not be_valid}
  end

  describe "when password is blank" do
    before {@user.password = " "}
    it {should_not be_valid}
  end


  describe User, "when create user project" do
    it "user should have projects" do 
        @project = User.new(username: "john@gmail.com", password: "abcdef" )
        project = Project.new
    end
  end


reflection_children = User.reflect_on_association(:project)

  describe "when User has project(s)" do
   # it { should have_many( :projects)}
    if !reflection_children.nil?
        if reflection_children.macro == :has_many
          it {should be_valid}
        else
          it {should_not be_valid}
        end
    else
        it {should_not be_valid}
    end
  end

  describe "when user registration is correct" do
      before do
        fill_in "username",         with: "bill@yahoo.com"
        fill_in "password",        with: "abcdef"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end




  
end
