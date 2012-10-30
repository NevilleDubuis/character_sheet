class CreateWarhammer40ks < ActiveRecord::Migration
  def change
    create_table :warhammer40ks do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
