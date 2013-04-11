require 'spec_helper'

describe Task do
  before do
    @task = task.new( 
                          name: "abcdef",
                          description: "test",
                          start_date: "Oct 1",
                          end_date: "Oct 2"
                          )
  end

  subject { @task }

  it {should respond_to(:name)}
  it {should respond_to(:description)}

  describe "name is too long" do
    before {@task.name = "x" * 60}
    it {should_not be_valid}
  end


  describe "CRUD tasks" do
    # earlier request spec hidden
    
    it "Deletes a task" do
      task = Factory(:task, owner: "john", name: "john", task_id: 1)
      visit task_path
      expect{
        within "#task_#{task.id}" do
          click_link 'Destroy'
        end
      }.to change(Contact,:task).by(-1)
      page.should have_content "task"
      page.should_not have_content "name"
    end
  end
end


