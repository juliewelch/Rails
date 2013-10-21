require 'test_helper'

class ShoppingcartsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppingcarts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoppingcart" do
    assert_difference('Shoppingcart.count') do
      post :create, :shoppingcart => { }
    end

    assert_redirected_to shoppingcart_path(assigns(:shoppingcart))
  end

  test "should show shoppingcart" do
    get :show, :id => shoppingcarts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => shoppingcarts(:one).to_param
    assert_response :success
  end

  test "should update shoppingcart" do
    put :update, :id => shoppingcarts(:one).to_param, :shoppingcart => { }
    assert_redirected_to shoppingcart_path(assigns(:shoppingcart))
  end

  test "should destroy shoppingcart" do
    assert_difference('Shoppingcart.count', -1) do
      delete :destroy, :id => shoppingcarts(:one).to_param
    end

    assert_redirected_to shoppingcarts_path
  end
end
