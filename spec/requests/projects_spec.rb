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


  describe "CRUD Projects" do
    # earlier request spec hidden
    
    it "Deletes a Project" do
      project = Factory(:project, owner: "john", name: "john", user_id: 1)
      visit project_path
      expect{
        within "#project_#{project.id}" do
          click_link 'Destroy'
        end
      }.to change(Contact,:project).by(-1)
      page.should have_content "project"
      page.should_not have_content "name"
    end
  end
end



