class CreatePaths < ActiveRecord::Migration
  def change
    create_table :paths do |t|
      t.string :subject

      t.timestamps
    end
  end
end
