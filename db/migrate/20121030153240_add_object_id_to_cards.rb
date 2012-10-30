class AddObjectIdToCards < ActiveRecord::Migration
  def change
    add_column :cards, :object_id, :integer
  end
end
