class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :format
      t.string :difficulty
      t.string :prompt
      t.string :correct_answer

      t.timestamps
    end
  end
end
