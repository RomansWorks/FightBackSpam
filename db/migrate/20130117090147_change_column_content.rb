class ChangeColumnContent < ActiveRecord::Migration
  def change
    change_column :spams, :content, :text    
  end
end
