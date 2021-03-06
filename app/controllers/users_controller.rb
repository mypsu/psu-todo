class UsersController < ApplicationController
  before_filter :authorize, only: [:edit, :update, :destroy]
	before_filter :correct_user, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @projects = @user.projects.paginate(page: params[:page])
    @tasks = @user.tasks.paginate(page: params[:page])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
    if @user.save
        redirect_to root_url, notice: "Thank you for signing up"
    else
      respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
      end
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        sign_in @user
        flash[:success] = "Welcome " + @user.username


        format.html { redirect_to @user, notice: 'User created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User Projects Updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|

      if @user.username == current_user.username
        format.html { redirect_to users_url }
      else
        format.html { redirect_to root_url }
      end

      format.json { head :no_content }
    end
  end

  private

   def correct_user
      @user = User.find(params[:id])
      redirect_to(users_url) unless current_user?(@user)
    end 


end