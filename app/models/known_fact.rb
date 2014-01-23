require 'pry'
class KnownFact < ActiveRecord::Base
  belongs_to :user
  belongs_to :fact

  def update_decaying_mastery_score 
    times_seen = self.times_seen
    if times_seen != 0
      last_mastery_score = self.last_mastery_score
      days_since_last_seen = (Time.now - self.last_seen)/60/60/24
      decayed_score = last_mastery_score - (days_since_last_seen*(1/(2*times_seen))*last_mastery_score)
      binding.pry
      if decayed_score > 0
        self.decaying_mastery_score = decayed_score
      else
        self.decaying_mastery_score = 0
      end
    end
  end
end

