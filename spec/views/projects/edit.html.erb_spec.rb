require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :projectname => "MyString",
      :project => "MyString",
      :description => "MyString",
      :overallcomments => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_projectname", :name => "project[projectname]"
      assert_select "input#project_project", :name => "project[project]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_overallcomments", :name => "project[overallcomments]"
    end
  end
end
