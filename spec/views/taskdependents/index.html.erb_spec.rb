require 'spec_helper'

describe "taskdependents/index" do
  before(:each) do
    assign(:taskdependents, [
      stub_model(Taskdependent,
        :task_id => 1,
        :dep_id => "Dep",
        :create => "Create",
        :destroy => "Destroy"
      ),
      stub_model(Taskdependent,
        :task_id => 1,
        :dep_id => "Dep",
        :create => "Create",
        :destroy => "Destroy"
      )
    ])
  end

  it "renders a list of taskdependents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Dep".to_s, :count => 2
    assert_select "tr>td", :text => "Create".to_s, :count => 2
    assert_select "tr>td", :text => "Destroy".to_s, :count => 2
  end
end
