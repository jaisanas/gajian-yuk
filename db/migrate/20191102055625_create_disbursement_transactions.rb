class CreateDisbursementTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :disbursement_transactions do |t|

      t.timestamps
    end
  end
end
