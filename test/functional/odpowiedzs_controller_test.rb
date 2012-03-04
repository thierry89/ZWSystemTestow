require 'test_helper'

class OdpowiedzsControllerTest < ActionController::TestCase
  setup do
    @odpowiedz = odpowiedzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:odpowiedzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create odpowiedz" do
    assert_difference('Odpowiedz.count') do
      post :create, odpowiedz: @odpowiedz.attributes
    end

    assert_redirected_to odpowiedz_path(assigns(:odpowiedz))
  end

  test "should show odpowiedz" do
    get :show, id: @odpowiedz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @odpowiedz
    assert_response :success
  end

  test "should update odpowiedz" do
    put :update, id: @odpowiedz, odpowiedz: @odpowiedz.attributes
    assert_redirected_to odpowiedz_path(assigns(:odpowiedz))
  end

  test "should destroy odpowiedz" do
    assert_difference('Odpowiedz.count', -1) do
      delete :destroy, id: @odpowiedz
    end

    assert_redirected_to odpowiedzs_path
  end
end
