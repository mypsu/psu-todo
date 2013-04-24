require 'spec_helper'

describe TasksController do


  describe "GET index" do
    it "populates all the tasks" do
      task = FactoryGirl.create(:task)
      get :index
      assigns(:tasks).should eq([task])
    end
  end

    describe "GET show" do
    it "assigns the requested task to @task" do
      task = FactoryGirl.create(:task)
      get :show, {:id => task.to_param}
      assigns(:task).should eq(task)
    end
  end

    describe "GET new" do
    it "assigns a new task to @task" do
      get :new
      assigns(:task).should be_a_new(task)
    end
  end

    describe "GET edit" do
    it "assigns the requested task to @task" do
      task = FactoryGirl.create(:task)
      get :edit, {:id => task.to_param}
      assigns(:task).should eq(project)
    end
  end

  describe "POST create" do
  context "with valid attributes" do
    it "creates a new task" do
      expect{
        post :create, task: FactoryGirl.attributes_for(:task)
      }.to change(Task,:count).by(1)
    end
    
    it "redirects to the new project" do
      post :create, task: FactoryGirl.attributes_for(:task)
      response.should redirect_to Task.last
    end
  end
  
  context "with invalid attributes" do
    it "does not save the new task" do
      expect{
        post :create, task: FactoryGirl.attributes_for(:invalid_task)
      }.to_not change(Task,:count)
    end
    
    it "re-renders the new method" do
      post :create, task: FactoryGirl.attributes_for(:invalid_task)
      response.should render_template :new
    end
  end 
  end

describe 'PUT update' do
  before :each do
    @task = FactoryGirl.create(:task, project_id: "PRID111", description: "testTask111")
  end
  
  context "valid attributes" do
    it "located the requested @task" do
      put :update, id: @task, task: FactoryGirl.attributes_for(:task)
      assigns(:task).should eq(@task)      
    end
  
    it "changes @task's attributes" do
      put :update, id: @task, 
        task: Factory.attributes_for(:task, project_id: "PRID111", name: "testTask999")
      @task.reload
      @task.project_id.should eq("PRID111")
      @task.description.should eq("testTask999")
    end
  
    it "redirects to the updated task" do
      put :update, id: @task, task: FactoryGirl.attributes_for(:task)
      response.should redirect_to @task
    end
  end
  
  context "invalid attributes" do
    it "locates the requested @task" do
      put :update, id: @task, task: FactoryGirl.attributes_for(:invalid_task)
      assigns(:task).should eq(@task)      
    end
    
    it "does not change @task's attributes" do
      put :update, id: @task, 
        task: Factory.attributes_for(:task, project_id: "PRID111", description: nil)
      @task.reload
      @task.project_id.should_not eq("PRID111")
      @task.description.should eq("testTask999")
    end
    
    it "re-renders the edit method" do
      put :update, id: @task, task: FactoryGirl.attributes_for(:invalid_task)
      response.should render_template :edit
    end
  end
end

describe 'DELETE destroy' do
  before :each do
    @project = FactoryGirl.create(:task)
  end
  
  it "deletes the task" do
    expect{
      delete :destroy, id: @task        
    }.to change(Task,:count).by(-1)
  end
    
  it "redirects to task#index" do
    delete :destroy, id: @task
    response.should redirect_to tasks_url
  end
end
end
