require 'test_helper'

class TaskdepsControllerTest < ActionController::TestCase
  setup do
    @taskdep = taskdeps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taskdeps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taskdep" do
    assert_difference('Taskdep.count') do
      post :create, taskdep: { child_id: @taskdep.child_id, create: @taskdep.create, destroy: @taskdep.destroy, parent_id: @taskdep.parent_id }
    end

    assert_redirected_to taskdep_path(assigns(:taskdep))
  end

  test "should show taskdep" do
    get :show, id: @taskdep
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taskdep
    assert_response :success
  end

  test "should update taskdep" do
    put :update, id: @taskdep, taskdep: { child_id: @taskdep.child_id, create: @taskdep.create, destroy: @taskdep.destroy, parent_id: @taskdep.parent_id }
    assert_redirected_to taskdep_path(assigns(:taskdep))
  end

  test "should destroy taskdep" do
    assert_difference('Taskdep.count', -1) do
      delete :destroy, id: @taskdep
    end

    assert_redirected_to taskdeps_path
  end
end
