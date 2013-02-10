require 'spec_helper'

describe "tasks/new" do
  before(:each) do
    assign(:task, stub_model(Task,
      :name => "MyString",
      :description => "MyString",
      :importance => "MyString",
      :status => "MyString",
      :produceddocuments => "MyString",
      :project_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tasks_path, :method => "post" do
      assert_select "input#task_name", :name => "task[name]"
      assert_select "input#task_description", :name => "task[description]"
      assert_select "input#task_importance", :name => "task[importance]"
      assert_select "input#task_status", :name => "task[status]"
      assert_select "input#task_produceddocuments", :name => "task[produceddocuments]"
      assert_select "input#task_project_id", :name => "task[project_id]"
      assert_select "input#task_user_id", :name => "task[user_id]"
    end
  end
end
