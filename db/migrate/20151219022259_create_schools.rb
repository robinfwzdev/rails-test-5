class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.text   :address
      t.string :type_of_school
    end
  end
end
