require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :projectname => "Projectname",
        :project => "Project",
        :description => "Description",
        :overallcomments => "Overallcomments"
      ),
      stub_model(Project,
        :projectname => "Projectname",
        :project => "Project",
        :description => "Description",
        :overallcomments => "Overallcomments"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Projectname".to_s, :count => 2
    assert_select "tr>td", :text => "Project".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Overallcomments".to_s, :count => 2
  end
end
