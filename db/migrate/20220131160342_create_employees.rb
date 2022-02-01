class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.string :job
      t.float :salary
      t.string :emp_status

      t.timestamps
    end
  end
end
