require 'test_helper'

class ServicePartnersControllerTest < ActionController::TestCase
  setup do
    @service_partner = service_partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:service_partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create service_partner" do
    assert_difference('ServicePartner.count') do
      post :create, service_partner: { birth_year: @service_partner.birth_year, city: @service_partner.city, education_background: @service_partner.education_background, email: @service_partner.email, internet_access: @service_partner.internet_access, internet_use: @service_partner.internet_use, is_urban: @service_partner.is_urban, name: @service_partner.name, phone_number: @service_partner.phone_number, surname: @service_partner.surname, work_experience: @service_partner.work_experience }
    end

    assert_redirected_to service_partner_path(assigns(:service_partner))
  end

  test "should show service_partner" do
    get :show, id: @service_partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @service_partner
    assert_response :success
  end

  test "should update service_partner" do
    put :update, id: @service_partner, service_partner: { birth_year: @service_partner.birth_year, city: @service_partner.city, education_background: @service_partner.education_background, email: @service_partner.email, internet_access: @service_partner.internet_access, internet_use: @service_partner.internet_use, is_urban: @service_partner.is_urban, name: @service_partner.name, phone_number: @service_partner.phone_number, surname: @service_partner.surname, work_experience: @service_partner.work_experience }
    assert_redirected_to service_partner_path(assigns(:service_partner))
  end

  test "should destroy service_partner" do
    assert_difference('ServicePartner.count', -1) do
      delete :destroy, id: @service_partner
    end

    assert_redirected_to service_partners_path
  end
end
