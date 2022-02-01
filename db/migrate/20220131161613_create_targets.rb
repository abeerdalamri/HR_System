class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.string :name
      t.string :desc
      t.date :sDate
      t.date :fDate
      t.string :attr
      t.string :team
      t.string :status

      t.timestamps
    end
  end
end
