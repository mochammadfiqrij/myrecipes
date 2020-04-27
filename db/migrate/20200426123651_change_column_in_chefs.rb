class ChangeColumnInChefs < ActiveRecord::Migration[5.2]
  def change
    rename_column :chefs, :name, :chefname
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    change_column :chefs, :chefname, :string, :limit =>30
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
