class CreateDecks < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.float :stage

      t.timestamps
    end
  end
end
