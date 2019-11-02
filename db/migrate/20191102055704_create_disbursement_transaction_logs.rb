class CreateDisbursementTransactionLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :disbursement_transaction_logs do |t|

      t.timestamps
    end
  end
end
