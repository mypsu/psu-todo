require 'spec_helper'

describe Task do

  let(:user) { FactoryGirl.create(:user) }
  before do
    @task = Task.new(description: "turbotax input", user_id: user.id)
  end

  subject { @task }

  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should be_invalid }

  describe "when user is not present" do
	before {@task.user_id = nil}
	it {should_not be_valid}
  end

  describe "in the task controller" do
        describe "crud submit by CREATING object" do
                before {post tasks_path}
 		 it { should respond_to(:task_id) }
               # specify {response.should redirect_to(tasks)}
        end
  end

end
