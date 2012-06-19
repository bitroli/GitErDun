require 'test_helper'

class UserLandingsControllerTest < ActionController::TestCase
  setup do
    @user_landing = user_landings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_landings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_landing" do
    assert_difference('UserLanding.count') do
      post :create, user_landing: @user_landing.attributes
    end

    assert_redirected_to user_landing_path(assigns(:user_landing))
  end

  test "should show user_landing" do
    get :show, id: @user_landing.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_landing.to_param
    assert_response :success
  end

  test "should update user_landing" do
    put :update, id: @user_landing.to_param, user_landing: @user_landing.attributes
    assert_redirected_to user_landing_path(assigns(:user_landing))
  end

  test "should destroy user_landing" do
    assert_difference('UserLanding.count', -1) do
      delete :destroy, id: @user_landing.to_param
    end

    assert_redirected_to user_landings_path
  end
end
