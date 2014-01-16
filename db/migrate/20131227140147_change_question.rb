class ChangeQuestion < ActiveRecord::Migration
  def up
    add_column :questions, :comment, :text
  end

  def down
    remove_column :questions, :comment
  end
end
