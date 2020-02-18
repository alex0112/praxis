class CreateHabits < ActiveRecord::Migration[5.1]
  def change
    create_table :habits do |t|
      t.string :name
      t.integer :how_often
      t.integer :how_important

      t.timestamps
    end
  end
end
