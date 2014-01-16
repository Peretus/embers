class AddDeckIdToFact < ActiveRecord::Migration
  def change
    change_table :facts do |t|
      t.references :deck
    end
  end
end
