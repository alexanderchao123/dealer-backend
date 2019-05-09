class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.references :deck
      t.string :rank
      t.string :suit
      t.boolean :drawn, default: false
      t.timestamps
    end
  end
end
