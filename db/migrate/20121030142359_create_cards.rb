class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.string :name
      t.integer :type_id

      t.timestamps
    end
  end
end
