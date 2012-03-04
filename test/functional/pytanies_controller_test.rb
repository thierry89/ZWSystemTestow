require 'test_helper'

class PytaniesControllerTest < ActionController::TestCase
  setup do
    @pytany = pytanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pytanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pytany" do
    assert_difference('Pytanie.count') do
      post :create, pytany: @pytany.attributes
    end

    assert_redirected_to pytany_path(assigns(:pytany))
  end

  test "should show pytany" do
    get :show, id: @pytany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pytany
    assert_response :success
  end

  test "should update pytany" do
    put :update, id: @pytany, pytany: @pytany.attributes
    assert_redirected_to pytany_path(assigns(:pytany))
  end

  test "should destroy pytany" do
    assert_difference('Pytanie.count', -1) do
      delete :destroy, id: @pytany
    end

    assert_redirected_to pytanies_path
  end
end
