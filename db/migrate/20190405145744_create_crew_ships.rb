class CreateCrewShips < ActiveRecord::Migration[5.2]
  def change
    create_table :crew_ships do |t|
      t.references :crew, index: true
      t.references :ship, index: true

      t.timestamps
    end
  end
end
