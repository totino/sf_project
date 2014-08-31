class CreateProjectAssignements < ActiveRecord::Migration
  def change
    create_table :project_assignements do |t|
      t.integer :employee_id
      t.integer :project_id

      t.timestamps
    end
  end
end
