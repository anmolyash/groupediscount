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
      post :create, project: { Project_name: @project.Project_name, address: @project.address, latitude: @project.latitude, launch_date: @project.launch_date, longitude: @project.longitude, offer: @project.offer, overview: @project.overview, possesion_date: @project.possesion_date, price: @project.price, price_per_sq_feet: @project.price_per_sq_feet, size: @project.size, total_area: @project.total_area }
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
    patch :update, id: @project, project: { Project_name: @project.Project_name, address: @project.address, latitude: @project.latitude, launch_date: @project.launch_date, longitude: @project.longitude, offer: @project.offer, overview: @project.overview, possesion_date: @project.possesion_date, price: @project.price, price_per_sq_feet: @project.price_per_sq_feet, size: @project.size, total_area: @project.total_area }
    assert_redirected_to project_path(assigns(:project))
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end

    assert_redirected_to projects_path
  end
end
