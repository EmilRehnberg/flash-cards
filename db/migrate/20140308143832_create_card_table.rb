class CreateCardTable < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :men, null: false, :unique => true
      t.text :kotae, null: false
      t.string :on
      t.string :type
      t.timestamps
    end
  end
end
