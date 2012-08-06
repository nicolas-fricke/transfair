require 'test_helper'

class SpotchecksControllerTest < ActionController::TestCase
  setup do
    @spotcheck = spotchecks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spotchecks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spotcheck" do
    assert_difference('Spotcheck.count') do
      post :create, spotcheck: { job_id: @spotcheck.job_id, rating: @spotcheck.rating, rating_text: @spotcheck.rating_text, service_partner_id: @spotcheck.service_partner_id }
    end

    assert_redirected_to spotcheck_path(assigns(:spotcheck))
  end

  test "should show spotcheck" do
    get :show, id: @spotcheck
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spotcheck
    assert_response :success
  end

  test "should update spotcheck" do
    put :update, id: @spotcheck, spotcheck: { job_id: @spotcheck.job_id, rating: @spotcheck.rating, rating_text: @spotcheck.rating_text, service_partner_id: @spotcheck.service_partner_id }
    assert_redirected_to spotcheck_path(assigns(:spotcheck))
  end

  test "should destroy spotcheck" do
    assert_difference('Spotcheck.count', -1) do
      delete :destroy, id: @spotcheck
    end

    assert_redirected_to spotchecks_path
  end
end
