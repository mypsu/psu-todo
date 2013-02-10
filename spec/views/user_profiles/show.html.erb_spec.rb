require 'spec_helper'

describe "user_profiles/show" do
  before(:each) do
    @user_profile = assign(:user_profile, stub_model(UserProfile,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :email => "Email",
      :phone => "Phone",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/Address/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/1/)
  end
end
