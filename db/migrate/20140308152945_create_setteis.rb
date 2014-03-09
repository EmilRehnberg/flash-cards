class CreateSetteis < ActiveRecord::Migration
  def change
    create_table :setteis do |t|
      t.references :kadai, index: true, :unique => true
      t.integer :reminder, default: 0
      t.integer :on_wo_purei_suru, default: 0
      t.timestamps
    end
  end
end
