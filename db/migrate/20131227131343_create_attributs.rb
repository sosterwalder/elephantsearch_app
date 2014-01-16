class CreateAttributs < ActiveRecord::Migration
  def change
    create_table :attributs do |t|
      t.string :name
      t.string :type
      t.text :description
      t.references :element

      t.timestamps
    end
    add_index :attributs, :element_id
  end
end
