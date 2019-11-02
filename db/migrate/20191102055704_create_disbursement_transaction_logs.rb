class CreateDisbursementTransactionLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :dt_logs do |t|
      t.belongs_to        :disbursement_transactions
      t.integer           :monthly_disbursement_number
      t.text              :status
      t.decimal           :disburse_amount
      t.integer           :disbursement_transaction_id

      t.timestamps
    end
  end
end
