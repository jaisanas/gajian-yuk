require 'test_helper'

class EmployeeDepositControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get employee_deposit_index_url
    assert_response :success
  end

end
