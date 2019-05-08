class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :deck
      t.string :rank
      t.string :suit
      t.timestamps
    end
  end
end
