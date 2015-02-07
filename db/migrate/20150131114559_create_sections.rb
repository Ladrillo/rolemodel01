class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.text :title
      t.text :summary
      t.timestamps null: false
    end
  end

  def down
  	drop_table :sections 
  end
end
