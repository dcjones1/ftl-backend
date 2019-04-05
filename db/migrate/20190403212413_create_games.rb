class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :playing
      t.references :player, index: true

      t.timestamps
    end
  end
end
