class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.references :victim
      t.references :spam

      t.timestamps
    end
    add_index :incidents, :victim_id
    add_index :incidents, :spam_id
  end
end
