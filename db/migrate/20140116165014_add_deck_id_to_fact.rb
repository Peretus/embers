class AddDeckIdToFact < ActiveRecord::Migration
  def change
    add_column :facts, :deck_id, :integer
  end
end
