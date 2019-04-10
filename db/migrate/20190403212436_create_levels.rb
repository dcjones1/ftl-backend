class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
      t.string :title
      t.text :story
      t.text :choices, array: true
      t.text :consequence, array: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
