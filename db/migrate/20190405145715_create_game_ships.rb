class CreateGameShips < ActiveRecord::Migration[5.2]
  def change
    create_table :game_ships do |t|
      t.references :game, index: true
      t.references :ship, index: true

      t.timestamps
    end
  end
end
