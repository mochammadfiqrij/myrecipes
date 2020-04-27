class ChangeColumnInRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :name, :chefname
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
    change_column :recipes, :chefname, :string
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
