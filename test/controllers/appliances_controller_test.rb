require "test_helper"

class AppliancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appliance = appliances(:one)
  end

  test "should get index" do
    get appliances_url
    assert_response :success
  end

  test "should get new" do
    get new_appliance_url
    assert_response :success
  end

  test "should create appliance" do
    assert_difference('Appliance.count') do
      post appliances_url, params: { appliance: { category: @appliance.category, contact_id: @appliance.contact_id, house_id: @appliance.house_id, last_serviced: @appliance.last_serviced, make: @appliance.make, model: @appliance.model, notes: @appliance.notes, service_due: @appliance.service_due, type: @appliance.type, year: @appliance.year } }
    end

    assert_redirected_to appliance_url(Appliance.last)
  end

  test "should show appliance" do
    get appliance_url(@appliance)
    assert_response :success
  end

  test "should get edit" do
    get edit_appliance_url(@appliance)
    assert_response :success
  end

  test "should update appliance" do
    patch appliance_url(@appliance), params: { appliance: { category: @appliance.category, contact_id: @appliance.contact_id, house_id: @appliance.house_id, last_serviced: @appliance.last_serviced, make: @appliance.make, model: @appliance.model, notes: @appliance.notes, service_due: @appliance.service_due, type: @appliance.type, year: @appliance.year } }
    assert_redirected_to appliance_url(@appliance)
  end

  test "should destroy appliance" do
    assert_difference('Appliance.count', -1) do
      delete appliance_url(@appliance)
    end

    assert_redirected_to appliances_url
  end
end
