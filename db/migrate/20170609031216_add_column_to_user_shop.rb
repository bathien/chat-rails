class AddColumnToUserShop < ActiveRecord::Migration[5.0]
  def change
  	 add_column :user_shops, :user_id, :integer
    add_column :user_shops, :shop_id, :integer
  end
end
