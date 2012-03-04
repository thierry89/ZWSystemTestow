require 'test_helper'

class PodejsciesControllerTest < ActionController::TestCase
  setup do
    @podejscy = podejscies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:podejscies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create podejscy" do
    assert_difference('Podejscie.count') do
      post :create, podejscy: @podejscy.attributes
    end

    assert_redirected_to podejscy_path(assigns(:podejscy))
  end

  test "should show podejscy" do
    get :show, id: @podejscy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @podejscy
    assert_response :success
  end

  test "should update podejscy" do
    put :update, id: @podejscy, podejscy: @podejscy.attributes
    assert_redirected_to podejscy_path(assigns(:podejscy))
  end

  test "should destroy podejscy" do
    assert_difference('Podejscie.count', -1) do
      delete :destroy, id: @podejscy
    end

    assert_redirected_to podejscies_path
  end
end
