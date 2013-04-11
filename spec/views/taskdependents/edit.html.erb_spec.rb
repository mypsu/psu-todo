require 'spec_helper'

describe "taskdependents/edit" do
  before(:each) do
    @taskdependent = assign(:taskdependent, stub_model(Taskdependent,
      :task_id => 1,
      :dep_id => "MyString",
      :create => "MyString",
      :destroy => "MyString"
    ))
  end

  it "renders the edit taskdependent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", taskdependent_path(@taskdependent), "post" do
      assert_select "input#taskdependent_task_id[name=?]", "taskdependent[task_id]"
      assert_select "input#taskdependent_dep_id[name=?]", "taskdependent[dep_id]"
      assert_select "input#taskdependent_create[name=?]", "taskdependent[create]"
      assert_select "input#taskdependent_destroy[name=?]", "taskdependent[destroy]"
    end
  end
end
