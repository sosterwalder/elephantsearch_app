class ChangeElement < ActiveRecord::Migration
  def up
    change_table :elements do |t|
      t.rename :type, :elementType
    end
  end
  def down
    change_table :elements do |t|
      t.rename :elementType, :type
    end
  end
  
end
