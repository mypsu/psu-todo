require 'spec_helper'

describe "Routing to Task_Controller" do
  it "routes /tasks for dependent elements" do
    expect(:get => "/tasks/2").to route_to(
      :controller => "tasks",
      :action => "show",
      :description => "taxes"
    )
  end

  it "does not expose a list of tasks" do
    expect(:get => "/tasks").not_to be_routable
  end
end
