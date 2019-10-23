class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.text :name
      t.text :npwp
      t.text :no_ktp
      t.text :disburse_credit
      t.text :status
      t.text :level
      t.decimal :salary
      t.datetime :join_date

      t.timestamps
    end
  end
end
