require 'test_helper'

class PacotesControllerTest < ActionController::TestCase
  setup do
    @pacote = pacotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pacotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pacote" do
    assert_difference('Pacote.count') do
      post :create, pacote: {  }
    end

    assert_redirected_to pacote_path(assigns(:pacote))
  end

  test "should show pacote" do
    get :show, id: @pacote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pacote
    assert_response :success
  end

  test "should update pacote" do
    put :update, id: @pacote, pacote: {  }
    assert_redirected_to pacote_path(assigns(:pacote))
  end

  test "should destroy pacote" do
    assert_difference('Pacote.count', -1) do
      delete :destroy, id: @pacote
    end

    assert_redirected_to pacotes_path
  end
end
