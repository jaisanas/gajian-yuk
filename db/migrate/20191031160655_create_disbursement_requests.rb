class CreateDisbursementRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :disbursement_requests do |t|
      t.belongs_to :employees
      t.text :message
      t.decimal :amount
      t.datetime :disbursement_date
      t.decimal :employee_salary_balance
      t.text :status
      t.integer :hr_admin_id
      t.integer :employee_id
      t.integer :montly_used_credit

      t.timestamps
    end
  end
end
