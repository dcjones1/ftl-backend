class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name
      t.integer :health
      t.references :player, index: true

      t.timestamps
    end
  end
end
