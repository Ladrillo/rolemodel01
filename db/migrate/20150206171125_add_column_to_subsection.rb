class AddColumnToSubsection < ActiveRecord::Migration
  def up
    add_column :subsections, :image_file_name, :string
  end

  def down
  	remove_column :subsections, :image_file_name, :string
  end
end
