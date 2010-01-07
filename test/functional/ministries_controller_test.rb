require 'test_helper'

class MinistriesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ministries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ministries" do
    assert_difference('Ministries.count') do
      post :create, :ministries => { }
    end

    assert_redirected_to ministries_path(assigns(:ministries))
  end

  test "should show ministries" do
    get :show, :id => ministries(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => ministries(:one).id
    assert_response :success
  end

  test "should update ministries" do
    put :update, :id => ministries(:one).id, :ministries => { }
    assert_redirected_to ministries_path(assigns(:ministries))
  end

  test "should destroy ministries" do
    assert_difference('Ministries.count', -1) do
      delete :destroy, :id => ministries(:one).id
    end

    assert_redirected_to ministries_path
  end
end
