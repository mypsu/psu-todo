require 'spec_helper'

describe "taskdependents/new" do
  before(:each) do
    assign(:taskdependent, stub_model(Taskdependent,
      :task_id => 1,
      :dep_id => "MyString",
      :create => "MyString",
      :destroy => "MyString"
    ).as_new_record)
  end

  it "renders new taskdependent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", taskdependents_path, "post" do
      assert_select "input#taskdependent_task_id[name=?]", "taskdependent[task_id]"
      assert_select "input#taskdependent_dep_id[name=?]", "taskdependent[dep_id]"
      assert_select "input#taskdependent_create[name=?]", "taskdependent[create]"
      assert_select "input#taskdependent_destroy[name=?]", "taskdependent[destroy]"
    end
  end
end
