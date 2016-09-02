class AddUserIdToHiyos < ActiveRecord::Migration
  def change
    add_column :hiyos, :user_id, :integer
  end
end
