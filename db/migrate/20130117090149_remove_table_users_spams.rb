class RemoveTableUsersSpams < ActiveRecord::Migration
  def change
    drop_table :users_spams
  end
end
