class CreateFacts < ActiveRecord::Migration
  def change
    create_table :facts do |t|
      t.string :term
      t.text :definition

      t.timestamps
    end
  end
end
