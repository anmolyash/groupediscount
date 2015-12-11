require 'test_helper'

class CityzonesControllerTest < ActionController::TestCase
  setup do
    @cityzone = cityzones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cityzones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cityzone" do
    assert_difference('Cityzone.count') do
      post :create, cityzone: { cityzone: @cityzone.cityzone }
    end

    assert_redirected_to cityzone_path(assigns(:cityzone))
  end

  test "should show cityzone" do
    get :show, id: @cityzone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cityzone
    assert_response :success
  end

  test "should update cityzone" do
    patch :update, id: @cityzone, cityzone: { cityzone: @cityzone.cityzone }
    assert_redirected_to cityzone_path(assigns(:cityzone))
  end

  test "should destroy cityzone" do
    assert_difference('Cityzone.count', -1) do
      delete :destroy, id: @cityzone
    end

    assert_redirected_to cityzones_path
  end
end
