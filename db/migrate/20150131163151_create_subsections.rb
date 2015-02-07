class CreateSubsections < ActiveRecord::Migration
  def up
    create_table :subsections do |t|
      t.text :heading
      t.text :content
      t.references :section, index: true

      t.timestamps null: false
    end
    add_foreign_key :subsections, :sections
  end

  def down
  	drop_table :subsections
  end
end
