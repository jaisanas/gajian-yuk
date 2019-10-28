class AddNewColumnToEmployees < ActiveRecord::Migration[5.1]
  def change
      add_column :employees, :employee_id, :text
      add_column :employees, :user_admin_id, :text
      add_column :employees, :company_id, :text
      add_column :employees, :employee_deposit, :decimal
      add_column :employees, :bank_account_name, :text
      add_column :employees, :bank_account_number, :text
      add_column :employees, :bank_name, :text
  end
end
