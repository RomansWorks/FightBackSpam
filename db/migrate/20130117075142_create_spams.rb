class CreateSpams < ActiveRecord::Migration
  def change
    create_table :spams do |t|
      t.string :title
      t.string :content
      t.string :spammer
      t.references :submitter

      t.timestamps
    end
    add_index :spams, :submitter_id
  end
end
