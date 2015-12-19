class RenameTableStaffToUser < ActiveRecord::Migration
  def up
    rename_table :staffs, :users
  end

 def down
    rename_table :users, :staffs
 end
end
