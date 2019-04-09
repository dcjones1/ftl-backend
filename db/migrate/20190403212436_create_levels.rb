class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.text :story
      t.string :choices
      t.string :consequence
      t.references :game, index: true

      t.timestamps
    end
  end
end
