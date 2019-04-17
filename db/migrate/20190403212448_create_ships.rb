class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :health
      t.integer :pilotLevel
      t.integer :engineLevel
      t.integer :shields
      t.references :player, index: true

      t.timestamps
    end
  end
end
