require 'test_helper'

class GigibecalisControllerTest < ActionController::TestCase
  setup do
    @gigibecali = gigibecalis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gigibecalis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gigibecali" do
    assert_difference('Gigibecali.count') do
      post :create, :gigibecali => { :antena1 => @gigibecali.antena1 }
    end

    assert_redirected_to gigibecali_path(assigns(:gigibecali))
  end

  test "should show gigibecali" do
    get :show, :id => @gigibecali
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @gigibecali
    assert_response :success
  end

  test "should update gigibecali" do
    put :update, :id => @gigibecali, :gigibecali => { :antena1 => @gigibecali.antena1 }
    assert_redirected_to gigibecali_path(assigns(:gigibecali))
  end

  test "should destroy gigibecali" do
    assert_difference('Gigibecali.count', -1) do
      delete :destroy, :id => @gigibecali
    end

    assert_redirected_to gigibecalis_path
  end
end
