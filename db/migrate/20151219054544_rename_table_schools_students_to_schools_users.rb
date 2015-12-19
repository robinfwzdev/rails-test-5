class RenameTableSchoolsStudentsToSchoolsUsers < ActiveRecord::Migration
  def up
    rename_table :schools_students, :schools_users
  end

  def down
    rename_table :schools_users, :schools_students
  end
end
