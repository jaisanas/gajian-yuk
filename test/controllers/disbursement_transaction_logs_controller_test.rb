require 'test_helper'

class DisbursementTransactionLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disbursement_transaction_log = disbursement_transaction_logs(:one)
  end

  test "should get index" do
    get disbursement_transaction_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_disbursement_transaction_log_url
    assert_response :success
  end

  test "should create disbursement_transaction_log" do
    assert_difference('DisbursementTransactionLog.count') do
      post disbursement_transaction_logs_url, params: { disbursement_transaction_log: {  } }
    end

    assert_redirected_to disbursement_transaction_log_url(DisbursementTransactionLog.last)
  end

  test "should show disbursement_transaction_log" do
    get disbursement_transaction_log_url(@disbursement_transaction_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_disbursement_transaction_log_url(@disbursement_transaction_log)
    assert_response :success
  end

  test "should update disbursement_transaction_log" do
    patch disbursement_transaction_log_url(@disbursement_transaction_log), params: { disbursement_transaction_log: {  } }
    assert_redirected_to disbursement_transaction_log_url(@disbursement_transaction_log)
  end

  test "should destroy disbursement_transaction_log" do
    assert_difference('DisbursementTransactionLog.count', -1) do
      delete disbursement_transaction_log_url(@disbursement_transaction_log)
    end

    assert_redirected_to disbursement_transaction_logs_url
  end
end
