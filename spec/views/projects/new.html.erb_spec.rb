require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :projectname => "MyString",
      :project => "MyString",
      :description => "MyString",
      :overallcomments => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_projectname", :name => "project[projectname]"
      assert_select "input#project_project", :name => "project[project]"
      assert_select "input#project_description", :name => "project[description]"
      assert_select "input#project_overallcomments", :name => "project[overallcomments]"
    end
  end
end
