class AddLastMasteryScoreToKnownFact < ActiveRecord::Migration
  def change
    add_column :known_facts, :last_mastery_score, :float
  end
end
