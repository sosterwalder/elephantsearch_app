class CreateLexicons < ActiveRecord::Migration
  def up
    create_table :lexicons do |t|
      t.text :keyword
      t.text :answer
      t.integer :counter

      t.timestamps
    end
  end
  
  def down
    drop_table :lexicons
  end
end
