require 'spec_helper'

describe "taskdependents/show" do
  before(:each) do
    @taskdependent = assign(:taskdependent, stub_model(Taskdependent,
      :task_id => 1,
      :dep_id => "Dep",
      :create => "Create",
      :destroy => "Destroy"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Dep/)
    rendered.should match(/Create/)
    rendered.should match(/Destroy/)
  end
end
