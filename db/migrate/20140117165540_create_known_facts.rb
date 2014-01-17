class CreateKnownFacts < ActiveRecord::Migration
  def change
    create_table :known_facts do |t|
      t.datetime :last_seen
      t.float :mastery_score
      t.references :user, index: true
      t.references :fact, index: true

      t.timestamps
    end
  end
end
