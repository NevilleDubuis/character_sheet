require 'test_helper'

class Warhammer40ksControllerTest < ActionController::TestCase
  setup do
    @warhammer40k = warhammer40ks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warhammer40ks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warhammer40k" do
    assert_difference('Warhammer40k.count') do
      post :create, warhammer40k: { age: @warhammer40k.age, name: @warhammer40k.name }
    end

    assert_redirected_to warhammer40k_path(assigns(:warhammer40k))
  end

  test "should show warhammer40k" do
    get :show, id: @warhammer40k
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warhammer40k
    assert_response :success
  end

  test "should update warhammer40k" do
    put :update, id: @warhammer40k, warhammer40k: { age: @warhammer40k.age, name: @warhammer40k.name }
    assert_redirected_to warhammer40k_path(assigns(:warhammer40k))
  end

  test "should destroy warhammer40k" do
    assert_difference('Warhammer40k.count', -1) do
      delete :destroy, id: @warhammer40k
    end

    assert_redirected_to warhammer40ks_path
  end
end
