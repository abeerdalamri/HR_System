class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :desc
      t.string :members
      t.string :teamLead

      t.timestamps
    end
  end
end
