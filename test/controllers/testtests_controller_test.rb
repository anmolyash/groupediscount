require 'test_helper'

class TesttestsControllerTest < ActionController::TestCase
  setup do
    @testtest = testtests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testtests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testtest" do
    assert_difference('Testtest.count') do
      post :create, testtest: {  }
    end

    assert_redirected_to testtest_path(assigns(:testtest))
  end

  test "should show testtest" do
    get :show, id: @testtest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testtest
    assert_response :success
  end

  test "should update testtest" do
    patch :update, id: @testtest, testtest: {  }
    assert_redirected_to testtest_path(assigns(:testtest))
  end

  test "should destroy testtest" do
    assert_difference('Testtest.count', -1) do
      delete :destroy, id: @testtest
    end

    assert_redirected_to testtests_path
  end
end
