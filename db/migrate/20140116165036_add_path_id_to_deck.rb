class AddPathIdToDeck < ActiveRecord::Migration
  def change
    change_table :decks do |t|
      t.references :path
    end
  end
end
