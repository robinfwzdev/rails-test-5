class AddFieldOnUsers < ActiveRecord::Migration
  def change
    add_column :users, :years_of_exp, :integer
  end
end
