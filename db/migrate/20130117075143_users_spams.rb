class UsersSpams < ActiveRecord::Migration
  def change
    create_table :users_spams, :id => false do |t|
      t.references :victim, :class_name => "User"
      t.references :spam
    end
  end
end
