class CreateElements < ActiveRecord::Migration
  def up
    drop_table :elements    
    create_table :elements do |t|
      t.string :name
      t.string :elementType
      t.text :description

      t.timestamps
    end
  end
end
