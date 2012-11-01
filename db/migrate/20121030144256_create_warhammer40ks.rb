class CreateWarhammer40ks < ActiveRecord::Migration
  def change
    create_table :warhammer40ks do |t|
      t.string :name
      t.string :character_name
      t.string :player_name
      t.string :native_world
      t.string :carrier_plan
      t.string :promotion
      t.string :divination
      t.string :specifics
      t.string :gender
      t.string :stature
      t.string :size
      t.string :weight
      t.string :skin_color
      t.string :hair
      t.string :eyes
      t.string :age

      t.timestamps
    end
  end
end
