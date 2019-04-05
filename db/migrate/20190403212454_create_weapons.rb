class CreateWeapons < ActiveRecord::Migration[5.2]
  def change
    create_table :weapons do |t|
      t.string :name
      t.string :type
      t.integer :shots
      t.integer :effect

      t.timestamps
    end
  end
end
