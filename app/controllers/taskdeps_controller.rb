class TaskdepsController < ApplicationController
  # GET /taskdeps
  # GET /taskdeps.json
  def index
    @taskdeps = Taskdep.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @taskdeps }
    end
  end

  # GET /taskdeps/1
  # GET /taskdeps/1.json
  def show
    @taskdep = Taskdep.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taskdep }
    end
  end

  # GET /taskdeps/new
  # GET /taskdeps/new.json
  def new
    @taskdep = Taskdep.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taskdep }
    end
  end

  # GET /taskdeps/1/edit
  def edit
    @taskdep = Taskdep.find(params[:id])
  end

  # POST /taskdeps
  # POST /taskdeps.json
  def create
    @taskdep = Taskdep.new(params[:taskdep])

    respond_to do |format|
      if @taskdep.save
        format.html { redirect_to @taskdep, notice: 'Taskdep was successfully created.' }
        format.json { render json: @taskdep, status: :created, location: @taskdep }
      else
        format.html { render action: "new" }
        format.json { render json: @taskdep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /taskdeps/1
  # PUT /taskdeps/1.json
  def update
    @taskdep = Taskdep.find(params[:id])

    respond_to do |format|
      if @taskdep.update_attributes(params[:taskdep])
        format.html { redirect_to @taskdep, notice: 'Taskdep was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taskdep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taskdeps/1
  # DELETE /taskdeps/1.json
  def destroy
    @taskdep = Taskdep.find(params[:id])
    @taskdep.destroy

    respond_to do |format|
      format.html { redirect_to taskdeps_url }
      format.json { head :no_content }
    end
  end
end
