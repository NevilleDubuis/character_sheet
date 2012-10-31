class AddClassnameToTypes < ActiveRecord::Migration
  def change
    add_column :types, :classname, :string
  end
end
