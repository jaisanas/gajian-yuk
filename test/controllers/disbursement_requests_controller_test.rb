require 'test_helper'

class DisbursementRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disbursement_request = disbursement_requests(:one)
  end

  test "should get index" do
    get disbursement_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_disbursement_request_url
    assert_response :success
  end

  test "should create disbursement_request" do
    assert_difference('DisbursementRequest.count') do
      post disbursement_requests_url, params: { disbursement_request: {  } }
    end

    assert_redirected_to disbursement_request_url(DisbursementRequest.last)
  end

  test "should show disbursement_request" do
    get disbursement_request_url(@disbursement_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_disbursement_request_url(@disbursement_request)
    assert_response :success
  end

  test "should update disbursement_request" do
    patch disbursement_request_url(@disbursement_request), params: { disbursement_request: {  } }
    assert_redirected_to disbursement_request_url(@disbursement_request)
  end

  test "should destroy disbursement_request" do
    assert_difference('DisbursementRequest.count', -1) do
      delete disbursement_request_url(@disbursement_request)
    end

    assert_redirected_to disbursement_requests_url
  end
end
