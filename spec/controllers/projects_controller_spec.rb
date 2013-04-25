require 'spec_helper'

describe ProjectsController do


  describe "GET index" do
    it "populates all the projects" do
      project = FactoryGirl.create(:project)
      get :index
      assigns(:projects).should eq([project])
    end
  end

    describe "GET show" do
    it "assigns the requested project to @project" do
      project = FactoryGirl.create(:project)
      get :show, {:id => project.to_param}
      assigns(:project).should eq(project)
    end
  end

    describe "GET new" do
    it "assigns a new project to @project" do
      get :new
      assigns(:project).should be_a_new(project)
    end
  end

    describe "GET edit" do
    it "assigns the requested project to @project" do
      project = FactoryGirl.create(:project)
      get :edit, {:id => project.to_param}
      assigns(:project).should eq(project)
    end
  end

  describe "POST create" do
  context "with valid attributes" do
    it "creates a new project" do
      expect{
        post :create, project: FactoryGirl.attributes_for(:project)
      }.to change(Project,:count).by(1)
    end
    
    it "redirects to the new project" do
      post :create, project: FactoryGirl.attributes_for(:project)
      response.should redirect_to Project.last
    end
  end
  
  context "with invalid attributes" do
    it "does not save the new project" do
      expect{
        post :create, project: FactoryGirl.attributes_for(:invalid_project)
      }.to_not change(Project,:count)
    end
    
    it "re-renders the new method" do
      post :create, project: FactoryGirl.attributes_for(:invalid_project)
      response.should render_template :new
    end
  end 
  end

describe 'PUT update' do
  before :each do
    @project = FactoryGirl.create(:project, user_id: "test111", name: "testproject11")
  end
  
  context "valid attributes" do
    it "located the requested @project" do
      put :update, id: @project, project: FactoryGirl.attributes_for(:project)
      assigns(:project).should eq(@project)      
    end
  
    it "changes @project's attributes" do
      put :update, id: @project, 
        project: FactoryGirl.attributes_for(:project, user_id: "test999", name: "testproject999")
      @project.reload
      @project.user_id.should eq("test999")
      @project.name.should eq("testproject999")
    end
  
    it "redirects to the updated project" do
      put :update, id: @project, project: FactoryGirl.attributes_for(:project)
      response.should redirect_to @project
    end
  end
  
  context "invalid attributes" do
    it "locates the requested @project" do
      put :update, id: @project, project: FactoryGirl.attributes_for(:invalid_project)
      assigns(:project).should eq(@project)      
    end
    
    it "does not change @project's attributes" do
      put :update, id: @project, 
        project: FactoryGirl.attributes_for(:project, user_id: "test999", name: nil)
      @project.reload
      @project.user_id.should_not eq("test999")
      @project.name.should eq("testproject999")
    end
    
    it "re-renders the edit method" do
      put :update, id: @project, project: FactoryGirl.attributes_for(:invalid_project)
      response.should render_template :edit
    end
  end
end

describe 'DELETE destroy' do
  before :each do
    @project = FactoryGirl.create(:project)
  end
  
  it "deletes the project" do
    expect{
      delete :destroy, id: @project        
    }.to change(Project,:count).by(-1)
  end
    
  it "redirects to projects#index" do
    delete :destroy, id: @project
    response.should redirect_to projects_url
  end
end


end
