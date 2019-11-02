class CreateDisbursementTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :disbursement_transactions do |t|
      t.belongs_to  :disbursement_requests
      t.integer     :monthly_disbursement_number
      t.text        :status
      t.integer     :finance_admin_id
      t.integer     :disbursement_request_id
    
      t.timestamps
    end
  end
end
