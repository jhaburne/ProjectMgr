require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: { Assigned_to: @task.Assigned_to, Projected_Completion_Date: @task.Projected_Completion_Date, Task_Description: @task.Task_Description, Task_Title: @task.Task_Title, Task_assigned: @task.Task_assigned, Task_on_Schedule: @task.Task_on_Schedule }
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do
    get :show, id: @task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task
    assert_response :success
  end

  test "should update task" do
    put :update, id: @task, task: { Assigned_to: @task.Assigned_to, Projected_Completion_Date: @task.Projected_Completion_Date, Task_Description: @task.Task_Description, Task_Title: @task.Task_Title, Task_assigned: @task.Task_assigned, Task_on_Schedule: @task.Task_on_Schedule }
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task
    end

    assert_redirected_to tasks_path
  end
end
