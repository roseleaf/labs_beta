require 'test_helper'

class ExtensionsControllerTest < ActionController::TestCase
  setup do
    @extension = extensions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extensions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extension" do
    assert_difference('Extension.count') do
      post :create, extension: {  }
    end

    assert_redirected_to extension_path(assigns(:extension))
  end

  test "should show extension" do
    get :show, id: @extension
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extension
    assert_response :success
  end

  test "should update extension" do
    put :update, id: @extension, extension: {  }
    assert_redirected_to extension_path(assigns(:extension))
  end

  test "should destroy extension" do
    assert_difference('Extension.count', -1) do
      delete :destroy, id: @extension
    end

    assert_redirected_to extensions_path
  end
end
