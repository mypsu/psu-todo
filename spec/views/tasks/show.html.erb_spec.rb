require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "Name",
      :description => "Description",
      :importance => "Importance",
      :status => "Status",
      :produceddocuments => "Produceddocuments",
      :project_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/Importance/)
    rendered.should match(/Status/)
    rendered.should match(/Produceddocuments/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
