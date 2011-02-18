require 'test_helper'

class Admin::InformationControllerTest < ActionController::TestCase
  setup do
    @admin_information = admin_information(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_information)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_information" do
    assert_difference('Admin::Information.count') do
      post :create, :admin_information => @admin_information.attributes
    end

    assert_redirected_to admin_information_path(assigns(:admin_information))
  end

  test "should show admin_information" do
    get :show, :id => @admin_information.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_information.to_param
    assert_response :success
  end

  test "should update admin_information" do
    put :update, :id => @admin_information.to_param, :admin_information => @admin_information.attributes
    assert_redirected_to admin_information_path(assigns(:admin_information))
  end

  test "should destroy admin_information" do
    assert_difference('Admin::Information.count', -1) do
      delete :destroy, :id => @admin_information.to_param
    end

    assert_redirected_to admin_informations_index_path
  end
end
