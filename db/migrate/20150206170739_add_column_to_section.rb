class AddColumnToSection < ActiveRecord::Migration
  def up
    add_column :sections, :image_file_name, :string
  end

  def down
  	remove_column :sections, :image_file_name, :string
  end
end
