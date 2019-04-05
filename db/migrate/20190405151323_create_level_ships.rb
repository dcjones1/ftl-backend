class CreateLevelShips < ActiveRecord::Migration[5.2]
  def change
    create_table :level_ships do |t|
      t.references :level, index: true
      t.references :ship, index: true

      t.timestamps
    end
  end
end
