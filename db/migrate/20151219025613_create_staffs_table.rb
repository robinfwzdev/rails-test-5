class CreateStaffsTable < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.date   :dob
    end
  end
end
