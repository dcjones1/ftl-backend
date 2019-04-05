class CreateShipWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :ship_weapons do |t|
      t.references :ship, index: true
      t.references :weapon, index: true

      t.timestamps
    end
  end
end
