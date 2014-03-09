class CreateToukeis < ActiveRecord::Migration
  def change
    create_table :toukeis do |t|
      t.references :card, index: true, null:false, :unique => true
      t.integer :saikin_no_kotae, null:false, default: 1
      t.decimal :seikouritsu, null:false, default: 0
      t.integer :tameshi, null:false, default: 0
      t.timestamps
    end
  end
end
