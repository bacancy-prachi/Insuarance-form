require "test_helper"

class InsuarancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insuarance = insuarances(:one)
  end

  test "should get index" do
    get insuarances_url
    assert_response :success
  end

  test "should get new" do
    get new_insuarance_url
    assert_response :success
  end

  test "should create insuarance" do
    assert_difference("Insuarance.count") do
      post insuarances_url, params: { insuarance: { address: @insuarance.address, bound_by_water: @insuarance.bound_by_water, city: @insuarance.city, client_knowledge: @insuarance.client_knowledge, email: @insuarance.email, ensure_municipal_water_sewer: @insuarance.ensure_municipal_water_sewer, ensure_property: @insuarance.ensure_property, first_name: @insuarance.first_name, insuarance_premium: @insuarance.insuarance_premium, language: @insuarance.language, last_name: @insuarance.last_name, lot_number: @insuarance.lot_number, municipla_evaluation_of_property: @insuarance.municipla_evaluation_of_property, note: @insuarance.note, phone: @insuarance.phone, postal_code: @insuarance.postal_code, present_owner: @insuarance.present_owner, province: @insuarance.province, purchase_date: @insuarance.purchase_date, referral_agent_email: @insuarance.referral_agent_email, referral_agent_name: @insuarance.referral_agent_name, second_home_owner: @insuarance.second_home_owner, third_home_owner: @insuarance.third_home_owner, type_of_property: @insuarance.type_of_property } }
    end

    assert_redirected_to insuarance_url(Insuarance.last)
  end

  test "should show insuarance" do
    get insuarance_url(@insuarance)
    assert_response :success
  end

  test "should get edit" do
    get edit_insuarance_url(@insuarance)
    assert_response :success
  end

  test "should update insuarance" do
    patch insuarance_url(@insuarance), params: { insuarance: { address: @insuarance.address, bound_by_water: @insuarance.bound_by_water, city: @insuarance.city, client_knowledge: @insuarance.client_knowledge, email: @insuarance.email, ensure_municipal_water_sewer: @insuarance.ensure_municipal_water_sewer, ensure_property: @insuarance.ensure_property, first_name: @insuarance.first_name, insuarance_premium: @insuarance.insuarance_premium, language: @insuarance.language, last_name: @insuarance.last_name, lot_number: @insuarance.lot_number, municipla_evaluation_of_property: @insuarance.municipla_evaluation_of_property, note: @insuarance.note, phone: @insuarance.phone, postal_code: @insuarance.postal_code, present_owner: @insuarance.present_owner, province: @insuarance.province, purchase_date: @insuarance.purchase_date, referral_agent_email: @insuarance.referral_agent_email, referral_agent_name: @insuarance.referral_agent_name, second_home_owner: @insuarance.second_home_owner, third_home_owner: @insuarance.third_home_owner, type_of_property: @insuarance.type_of_property } }
    assert_redirected_to insuarance_url(@insuarance)
  end

  test "should destroy insuarance" do
    assert_difference("Insuarance.count", -1) do
      delete insuarance_url(@insuarance)
    end

    assert_redirected_to insuarances_url
  end
end
