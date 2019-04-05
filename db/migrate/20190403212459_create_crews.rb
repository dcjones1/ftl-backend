class CreateCrews < ActiveRecord::Migration[5.2]
  def change
    create_table :crews do |t|
      t.string :name
      t.string :species
      t.string :role
      t.integer :skill
      t.integer :health

      t.timestamps
    end
  end
end
