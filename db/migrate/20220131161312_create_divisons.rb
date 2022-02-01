class CreateDivisons < ActiveRecord::Migration[7.0]
  def change
    create_table :divisons do |t|
      t.string :name
      t.string :desc
      t.string :team
      t.string :manager

      t.timestamps
    end
  end
end
