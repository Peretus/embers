class AddTimesSeenToKnownFact < ActiveRecord::Migration
  def change
    add_column :known_facts, :times_seen, :integer
  end
end
