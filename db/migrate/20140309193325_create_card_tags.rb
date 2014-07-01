class CreateCardTags < ActiveRecord::Migration
  def change
    create_table :cards_tags, :id => false do |t|
      t.references :card
      t.references :tag, index: true
    end
    add_index :cards_tags, [:card_id, :tag_id]
  end
end
