class CreateKanjiShousais < ActiveRecord::Migration
  def change
    create_table :kanji_shousais do |t|
      t.references :card, index: true, :unique => true
      t.string :onyomi
      t.string :kunyomi
      t.string :imi, null: false
      t.string :bushu
      t.timestamps
    end
  end
end
