class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :known_facts, :mastery_score, :decaying_mastery_score
  end
end
