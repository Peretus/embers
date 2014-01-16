class AddPathIdToDeck < ActiveRecord::Migration
  def change
    add_column :decks, :path_id, :integer
  end
end
