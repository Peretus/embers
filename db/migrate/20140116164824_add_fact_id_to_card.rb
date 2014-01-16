class AddFactIdToCard < ActiveRecord::Migration
  def change
    add_column :cards, :fact_id, :integer
  end
end
