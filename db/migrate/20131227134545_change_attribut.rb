class ChangeAttribut < ActiveRecord::Migration
  def up
    rename_column :attributs,:type, :attributType
  end

  def down
    rename_column :attributs, :attributType, :type
  end
end
