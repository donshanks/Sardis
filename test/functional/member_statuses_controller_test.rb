require 'test_helper'

class MemberStatusesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:member_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create member_status" do
    assert_difference('MemberStatus.count') do
      post :create, :member_status => { }
    end

    assert_redirected_to member_status_path(assigns(:member_status))
  end

  test "should show member_status" do
    get :show, :id => member_statuses(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => member_statuses(:one).id
    assert_response :success
  end

  test "should update member_status" do
    put :update, :id => member_statuses(:one).id, :member_status => { }
    assert_redirected_to member_status_path(assigns(:member_status))
  end

  test "should destroy member_status" do
    assert_difference('MemberStatus.count', -1) do
      delete :destroy, :id => member_statuses(:one).id
    end

    assert_redirected_to member_statuses_path
  end
end
