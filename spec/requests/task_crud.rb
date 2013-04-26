require 'spec_helper'

describe Task do

  let(:user) { FactoryGirl.create(:user) }
  before {
    @task = user.tasks.build(description: "turbotax input")
  }

  subject { @task }

  it { should respond_to(:description) }
  it { should respond_to(:user_id) }
  it { should be_invalid }

  describe "when user is not present" do
	before {@task.user_id = nil}
	it {should_not be_valid}
  end


  describe "blank task" do
	before { @task.description = ""}
	it {should_not be_valid}
  end

  describe  "should create task"  do 
	before {@user.save}
		let!(:newer_task) do 
			FactoryGirl.create(:task, user: @user, description: "submit tax", created_at: 1.hour.ago)
		end
        end
  end

  
