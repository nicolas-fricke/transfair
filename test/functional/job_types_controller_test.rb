require 'test_helper'

class JobTypesControllerTest < ActionController::TestCase
  setup do
    @job_type = job_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_type" do
    assert_difference('JobType.count') do
      post :create, job_type: { name: @job_type.name }
    end

    assert_redirected_to job_type_path(assigns(:job_type))
  end

  test "should show job_type" do
    get :show, id: @job_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_type
    assert_response :success
  end

  test "should update job_type" do
    put :update, id: @job_type, job_type: { name: @job_type.name }
    assert_redirected_to job_type_path(assigns(:job_type))
  end

  test "should destroy job_type" do
    assert_difference('JobType.count', -1) do
      delete :destroy, id: @job_type
    end

    assert_redirected_to job_types_path
  end
end
