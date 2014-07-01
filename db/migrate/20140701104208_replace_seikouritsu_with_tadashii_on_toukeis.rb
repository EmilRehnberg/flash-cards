class ReplaceSeikouritsuWithTadashiiOnToukeis < ActiveRecord::Migration
  def up
    remove_column :toukeis, :seikouritsu
    add_column :toukeis, :tadashii, :integer, null:false, default:0
  end

  def down
    add_column :toukeis, :seikouritsu, :decimal, null:false, default:0
    remove_column :toukeis, :tadashii
  end
end
