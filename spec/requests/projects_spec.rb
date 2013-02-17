require 'spec_helper'
describe Project do

  before do
    @project = Project.new(projectname: "bbq", project: "bbq", description: "end of summer bbq")
  end

  subject {@project}

  it {should respond_to(:projectname)}
  it {should be_valid}

end
