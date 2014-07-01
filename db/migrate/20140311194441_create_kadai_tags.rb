class CreateKadaiTags < ActiveRecord::Migration
  def change
    create_table :kadais_tags, id: false do |t|
      t.references :kadai
      t.references :tag, index: true
    end
    add_index :kadais_tags, [:kadai_id, :tag_id]
  end
end
