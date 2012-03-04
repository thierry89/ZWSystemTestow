require 'test_helper'

class KursControllerTest < ActionController::TestCase
  setup do
    @kur = kurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kur" do
    assert_difference('Kur.count') do
      post :create, kur: @kur.attributes
    end

    assert_redirected_to kur_path(assigns(:kur))
  end

  test "should show kur" do
    get :show, id: @kur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kur
    assert_response :success
  end

  test "should update kur" do
    put :update, id: @kur, kur: @kur.attributes
    assert_redirected_to kur_path(assigns(:kur))
  end

  test "should destroy kur" do
    assert_difference('Kur.count', -1) do
      delete :destroy, id: @kur
    end

    assert_redirected_to kurs_path
  end
end
