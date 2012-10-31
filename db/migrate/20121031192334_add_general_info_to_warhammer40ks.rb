class AddGeneralInfoToWarhammer40ks < ActiveRecord::Migration
  def change
    remove_column :warhammer40ks, :name
  	add_column :warhammer40ks, :character_name, :string
  	add_column :warhammer40ks, :player_name, :string
  	add_column :warhammer40ks, :native_world, :string
  	add_column :warhammer40ks, :carrier_plan, :string
  	add_column :warhammer40ks, :promotion, :string
  	add_column :warhammer40ks, :diviniation, :string
  	add_column :warhammer40ks, :specifics, :string
  	add_column :warhammer40ks, :gender, :string
  	add_column :warhammer40ks, :stature, :string
  	add_column :warhammer40ks, :size, :string
  	add_column :warhammer40ks, :weight, :string
  	add_column :warhammer40ks, :skin_color, :string
  	add_column :warhammer40ks, :hair, :string
  	add_column :warhammer40ks, :eyes, :string
  end
end
