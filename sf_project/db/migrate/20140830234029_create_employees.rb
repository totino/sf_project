class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :account
      t.string :index_no

      t.timestamps
    end
  end
end
