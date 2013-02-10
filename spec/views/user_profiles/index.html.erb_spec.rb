require 'spec_helper'

describe "user_profiles/index" do
  before(:each) do
    assign(:user_profiles, [
      stub_model(UserProfile,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :email => "Email",
        :phone => "Phone",
        :user_id => 1
      ),
      stub_model(UserProfile,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :email => "Email",
        :phone => "Phone",
        :user_id => 1
      )
    ])
  end

  it "renders a list of user_profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
