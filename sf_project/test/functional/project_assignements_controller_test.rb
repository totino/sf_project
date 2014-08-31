require 'test_helper'

class ProjectAssignementsControllerTest < ActionController::TestCase
  setup do
    @project_assignement = project_assignements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_assignements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create project_assignement" do
    assert_difference('ProjectAssignement.count') do
      post :create, project_assignement: { employee_id: @project_assignement.employee_id, project_id: @project_assignement.project_id }
    end

    assert_redirected_to project_assignement_path(assigns(:project_assignement))
  end

  test "should show project_assignement" do
    get :show, id: @project_assignement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @project_assignement
    assert_response :success
  end

  test "should update project_assignement" do
    put :update, id: @project_assignement, project_assignement: { employee_id: @project_assignement.employee_id, project_id: @project_assignement.project_id }
    assert_redirected_to project_assignement_path(assigns(:project_assignement))
  end

  test "should destroy project_assignement" do
    assert_difference('ProjectAssignement.count', -1) do
      delete :destroy, id: @project_assignement
    end

    assert_redirected_to project_assignements_path
  end
end
