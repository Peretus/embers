class AddUserIdToDeck < ActiveRecord::Migration
  def change
    change_table :decks do |t|
      t.references :user
    end
  end
end
