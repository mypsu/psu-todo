require 'spec_helper'

describe "user_profiles/new" do
  before(:each) do
    assign(:user_profile, stub_model(UserProfile,
      :firstname => "MyString",
      :lastname => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :user_id => 1
    ).as_new_record)
  end

  it "renders new user_profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_profiles_path, :method => "post" do
      assert_select "input#user_profile_firstname", :name => "user_profile[firstname]"
      assert_select "input#user_profile_lastname", :name => "user_profile[lastname]"
      assert_select "input#user_profile_address", :name => "user_profile[address]"
      assert_select "input#user_profile_city", :name => "user_profile[city]"
      assert_select "input#user_profile_state", :name => "user_profile[state]"
      assert_select "input#user_profile_zip", :name => "user_profile[zip]"
      assert_select "input#user_profile_email", :name => "user_profile[email]"
      assert_select "input#user_profile_phone", :name => "user_profile[phone]"
      assert_select "input#user_profile_user_id", :name => "user_profile[user_id]"
    end
  end
end
