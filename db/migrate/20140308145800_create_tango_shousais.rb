class CreateTangoShousais < ActiveRecord::Migration
  def change
    create_table :tango_shousais do |t|
      t.references :card, index: true, :unique => true
      t.string :kana
      t.timestamps
    end
  end
end
