class AddContactsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :phone_number, :text
    add_column :employees, :email, :text
  end
end
