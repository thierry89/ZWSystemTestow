require 'test_helper'

class KursesControllerTest < ActionController::TestCase
  setup do
    @kurs = kurses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kurses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kurs" do
    assert_difference('Kurs.count') do
      post :create, kurs: @kurs.attributes
    end

    assert_redirected_to kurs_path(assigns(:kurs))
  end

  test "should show kurs" do
    get :show, id: @kurs
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kurs
    assert_response :success
  end

  test "should update kurs" do
    put :update, id: @kurs, kurs: @kurs.attributes
    assert_redirected_to kurs_path(assigns(:kurs))
  end

  test "should destroy kurs" do
    assert_difference('Kurs.count', -1) do
      delete :destroy, id: @kurs
    end

    assert_redirected_to kurses_path
  end
end
