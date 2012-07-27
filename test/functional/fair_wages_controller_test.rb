require 'test_helper'

class FairWagesControllerTest < ActionController::TestCase
  setup do
    @fair_wage = fair_wages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fair_wages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fair_wage" do
    assert_difference('FairWage.count') do
      post :create, fair_wage: { amount: @fair_wage.amount, date: @fair_wage.date }
    end

    assert_redirected_to fair_wage_path(assigns(:fair_wage))
  end

  test "should show fair_wage" do
    get :show, id: @fair_wage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fair_wage
    assert_response :success
  end

  test "should update fair_wage" do
    put :update, id: @fair_wage, fair_wage: { amount: @fair_wage.amount, date: @fair_wage.date }
    assert_redirected_to fair_wage_path(assigns(:fair_wage))
  end

  test "should destroy fair_wage" do
    assert_difference('FairWage.count', -1) do
      delete :destroy, id: @fair_wage
    end

    assert_redirected_to fair_wages_path
  end
end
