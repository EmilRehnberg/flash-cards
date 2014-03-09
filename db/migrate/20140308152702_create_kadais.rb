class CreateKadais < ActiveRecord::Migration
  def change
    create_table :kadais do |t|
      t.string :namae, null:false, :unique => true
      t.timestamps
    end
  end
end
