require 'test_helper'

class DisbursementTransactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disbursement_transaction = disbursement_transactions(:one)
  end

  test "should get index" do
    get disbursement_transactions_url
    assert_response :success
  end

  test "should get new" do
    get new_disbursement_transaction_url
    assert_response :success
  end

  test "should create disbursement_transaction" do
    assert_difference('DisbursementTransaction.count') do
      post disbursement_transactions_url, params: { disbursement_transaction: {  } }
    end

    assert_redirected_to disbursement_transaction_url(DisbursementTransaction.last)
  end

  test "should show disbursement_transaction" do
    get disbursement_transaction_url(@disbursement_transaction)
    assert_response :success
  end

  test "should get edit" do
    get edit_disbursement_transaction_url(@disbursement_transaction)
    assert_response :success
  end

  test "should update disbursement_transaction" do
    patch disbursement_transaction_url(@disbursement_transaction), params: { disbursement_transaction: {  } }
    assert_redirected_to disbursement_transaction_url(@disbursement_transaction)
  end

  test "should destroy disbursement_transaction" do
    assert_difference('DisbursementTransaction.count', -1) do
      delete disbursement_transaction_url(@disbursement_transaction)
    end

    assert_redirected_to disbursement_transactions_url
  end
end
