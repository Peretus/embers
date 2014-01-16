class AddFactIdToCard < ActiveRecord::Migration
  def change
    change_table :cards do |t|
      t.references :fact
    end
  end
end
