require 'test_helper'

class ClienteRecepcionsControllerTest < ActionController::TestCase
  setup do
    @cliente_recepcion = cliente_recepcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cliente_recepcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente_recepcion" do
    assert_difference('ClienteRecepcion.count') do
      post :create, cliente_recepcion: { cliente_id: @cliente_recepcion.cliente_id, recepcion_id: @cliente_recepcion.recepcion_id }
    end

    assert_redirected_to cliente_recepcion_path(assigns(:cliente_recepcion))
  end

  test "should show cliente_recepcion" do
    get :show, id: @cliente_recepcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente_recepcion
    assert_response :success
  end

  test "should update cliente_recepcion" do
    patch :update, id: @cliente_recepcion, cliente_recepcion: { cliente_id: @cliente_recepcion.cliente_id, recepcion_id: @cliente_recepcion.recepcion_id }
    assert_redirected_to cliente_recepcion_path(assigns(:cliente_recepcion))
  end

  test "should destroy cliente_recepcion" do
    assert_difference('ClienteRecepcion.count', -1) do
      delete :destroy, id: @cliente_recepcion
    end

    assert_redirected_to cliente_recepcions_path
  end
end
