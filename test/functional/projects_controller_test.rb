require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post :create, project: { Company_Name: @project.Company_Name, Live_Project: @project.Live_Project, Overview: @project.Overview, Project_Manager: @project.Project_Manager, Project_Start_Date: @project.Project_Start_Date, Status: @project.Status, Team_Member_List: @project.Team_Member_List, Title: @project.Title }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  test "should show project" do
    get :show, id: @project
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    put :update, id: @project, project: { Company_Name: @project.Company_Name, Live_Project: @project.Live_Project, Overview: @project.Overview, Project_Manager: @project.Project_Manager, Project_Start_Date: @project.Project_Start_Date, Status: @project.Status, Team_Member_List: @project.Team_Member_List, Title: @project.Title }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
