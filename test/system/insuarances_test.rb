require "application_system_test_case"

class InsuarancesTest < ApplicationSystemTestCase
  setup do
    @insuarance = insuarances(:one)
  end

  test "visiting the index" do
    visit insuarances_url
    assert_selector "h1", text: "Insuarances"
  end

  test "should create insuarance" do
    visit insuarances_url
    click_on "New insuarance"

    fill_in "Address", with: @insuarance.address
    check "Bound by water" if @insuarance.bound_by_water
    fill_in "City", with: @insuarance.city
    check "Client knowledge" if @insuarance.client_knowledge
    fill_in "Email", with: @insuarance.email
    check "Ensure municipal water sewer" if @insuarance.ensure_municipal_water_sewer
    check "Ensure property" if @insuarance.ensure_property
    fill_in "First name", with: @insuarance.first_name
    fill_in "Insuarance premium", with: @insuarance.insuarance_premium
    check "Language" if @insuarance.language
    fill_in "Last name", with: @insuarance.last_name
    fill_in "Lot number", with: @insuarance.lot_number
    fill_in "Municipla evaluation of property", with: @insuarance.municipla_evaluation_of_property
    fill_in "Note", with: @insuarance.note
    fill_in "Phone", with: @insuarance.phone
    fill_in "Postal code", with: @insuarance.postal_code
    check "Present owner" if @insuarance.present_owner
    fill_in "Province", with: @insuarance.province
    fill_in "Purchase date", with: @insuarance.purchase_date
    fill_in "Referral agent email", with: @insuarance.referral_agent_email
    fill_in "Referral agent name", with: @insuarance.referral_agent_name
    fill_in "Second home owner", with: @insuarance.second_home_owner
    fill_in "Third home owner", with: @insuarance.third_home_owner
    fill_in "Type of property", with: @insuarance.type_of_property
    click_on "Create Insuarance"

    assert_text "Insuarance was successfully created"
    click_on "Back"
  end

  test "should update Insuarance" do
    visit insuarance_url(@insuarance)
    click_on "Edit this insuarance", match: :first

    fill_in "Address", with: @insuarance.address
    check "Bound by water" if @insuarance.bound_by_water
    fill_in "City", with: @insuarance.city
    check "Client knowledge" if @insuarance.client_knowledge
    fill_in "Email", with: @insuarance.email
    check "Ensure municipal water sewer" if @insuarance.ensure_municipal_water_sewer
    check "Ensure property" if @insuarance.ensure_property
    fill_in "First name", with: @insuarance.first_name
    fill_in "Insuarance premium", with: @insuarance.insuarance_premium
    check "Language" if @insuarance.language
    fill_in "Last name", with: @insuarance.last_name
    fill_in "Lot number", with: @insuarance.lot_number
    fill_in "Municipla evaluation of property", with: @insuarance.municipla_evaluation_of_property
    fill_in "Note", with: @insuarance.note
    fill_in "Phone", with: @insuarance.phone
    fill_in "Postal code", with: @insuarance.postal_code
    check "Present owner" if @insuarance.present_owner
    fill_in "Province", with: @insuarance.province
    fill_in "Purchase date", with: @insuarance.purchase_date
    fill_in "Referral agent email", with: @insuarance.referral_agent_email
    fill_in "Referral agent name", with: @insuarance.referral_agent_name
    fill_in "Second home owner", with: @insuarance.second_home_owner
    fill_in "Third home owner", with: @insuarance.third_home_owner
    fill_in "Type of property", with: @insuarance.type_of_property
    click_on "Update Insuarance"

    assert_text "Insuarance was successfully updated"
    click_on "Back"
  end

  test "should destroy Insuarance" do
    visit insuarance_url(@insuarance)
    click_on "Destroy this insuarance", match: :first

    assert_text "Insuarance was successfully destroyed"
  end
end
