require 'test_helper'

class BurdensControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:burdens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create burden" do
    assert_difference('Burden.count') do
      post :create, :burden => { }
    end

    assert_redirected_to burden_path(assigns(:burden))
  end

  test "should show burden" do
    get :show, :id => burdens(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => burdens(:one).id
    assert_response :success
  end

  test "should update burden" do
    put :update, :id => burdens(:one).id, :burden => { }
    assert_redirected_to burden_path(assigns(:burden))
  end

  test "should destroy burden" do
    assert_difference('Burden.count', -1) do
      delete :destroy, :id => burdens(:one).id
    end

    assert_redirected_to burdens_path
  end
end
