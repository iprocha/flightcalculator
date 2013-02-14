require 'test_helper'

class FlighScalesControllerTest < ActionController::TestCase
  setup do
    @fligh_scale = fligh_scales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fligh_scales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fligh_scale" do
    assert_difference('FlighScale.count') do
      post :create, fligh_scale: @fligh_scale.attributes
    end

    assert_redirected_to fligh_scale_path(assigns(:fligh_scale))
  end

  test "should show fligh_scale" do
    get :show, id: @fligh_scale.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fligh_scale.to_param
    assert_response :success
  end

  test "should update fligh_scale" do
    put :update, id: @fligh_scale.to_param, fligh_scale: @fligh_scale.attributes
    assert_redirected_to fligh_scale_path(assigns(:fligh_scale))
  end

  test "should destroy fligh_scale" do
    assert_difference('FlighScale.count', -1) do
      delete :destroy, id: @fligh_scale.to_param
    end

    assert_redirected_to fligh_scales_path
  end
end
