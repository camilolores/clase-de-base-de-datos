require 'test_helper'

class Clientes1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clientes1 = clientes1s(:one)
  end

  test "should get index" do
    get clientes1s_url
    assert_response :success
  end

  test "should get new" do
    get new_clientes1_url
    assert_response :success
  end

  test "should create clientes1" do
    assert_difference('Clientes1.count') do
      post clientes1s_url, params: { clientes1: { email: @clientes1.email, name: @clientes1.name } }
    end

    assert_redirected_to clientes1_url(Clientes1.last)
  end

  test "should show clientes1" do
    get clientes1_url(@clientes1)
    assert_response :success
  end

  test "should get edit" do
    get edit_clientes1_url(@clientes1)
    assert_response :success
  end

  test "should update clientes1" do
    patch clientes1_url(@clientes1), params: { clientes1: { email: @clientes1.email, name: @clientes1.name } }
    assert_redirected_to clientes1_url(@clientes1)
  end

  test "should destroy clientes1" do
    assert_difference('Clientes1.count', -1) do
      delete clientes1_url(@clientes1)
    end

    assert_redirected_to clientes1s_url
  end
end
