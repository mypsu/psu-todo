class TaskdependentsController < ApplicationController
  # GET /taskdependents
  # GET /taskdependents.json
  def index
    @taskdependents = Taskdependent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taskdependents }
    end
  end

  # GET /taskdependents/1
  # GET /taskdependents/1.json
  def show
    @taskdependent = Taskdependent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taskdependent }
    end
  end

  # GET /taskdependents/new
  # GET /taskdependents/new.json
  def new
    @taskdependent = Taskdependent.new
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taskdependent }
    end
  end

  # GET /taskdependents/1/edit
  def edit
    @taskdependent = Taskdependent.find(params[:id])
  end

  # POST /taskdependents
  # POST /taskdependents.json
  def create
    @taskdependent = Taskdependent.new(params[:taskdependent])
    #@taskdependent = current_task.taskdependents.build(:dep_id => params[:dep_id])

    respond_to do |format|
      if @taskdependent.save
        format.html { redirect_to @taskdependent, notice: 'Taskdependent was successfully created.' }
        format.json { render json: @taskdependent, status: :created, location: @taskdependent }
        #redirect_to /tasks

      else
        format.html { render action: "new" }
        format.json { render json: @taskdependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taskdependents/1
  # PUT /taskdependents/1.json
  def update
    @taskdependent = Taskdependent.find(params[:id])

    respond_to do |format|
      if @taskdependent.update_attributes(params[:taskdependent])
        format.html { redirect_to @taskdependent, notice: 'Taskdependent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taskdependent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskdependents/1
  # DELETE /taskdependents/1.json
  def destroy
 #   @taskdependent = Taskdependent.find(params[:id])
    @taskdependent = current_task.taskdependents.find(params[:id])
    @taskdependent.destroy

    respond_to do |format|
      format.html { redirect_to taskdependents_url }
      format.json { head :no_content }

    end
  end
end
