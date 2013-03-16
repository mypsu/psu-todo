require 'spec_helper'

describe Project do
  before do
    @Project = Project.new( 
                          name: "abcdef",
                          description: "test",
                          start_date: "Oct 1",
                          end_date: "Oct 2"
                          )
  end

  subject { @project }

  it {should respond_to(:name)}
  it {should respond_to(:description)}

  describe "name is too long" do
    before {@project.name = "x" * 60}
    it {should_not be_valid}
  end


end

