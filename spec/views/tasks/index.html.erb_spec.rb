require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
        :name => "Name",
        :description => "Description",
        :importance => "Importance",
        :status => "Status",
        :produceddocuments => "Produceddocuments",
        :project_id => 1,
        :user_id => 2
      ),
      stub_model(Task,
        :name => "Name",
        :description => "Description",
        :importance => "Importance",
        :status => "Status",
        :produceddocuments => "Produceddocuments",
        :project_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Importance".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Produceddocuments".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
