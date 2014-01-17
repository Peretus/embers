class Page < ActiveRecord::Base

  # def sample_facts
  #   @sample_facts = (Path.first.decks.first.facts).to_json(:only => [:term], [:definition], [:id])
  # end

  def split_to_answer_objects 
    spaced_word = self.definition.gsub('.', " . ")
    new_spaced_word = spaced_word.gsub("(", " (")
    new_spaced_word.split(' ')
  end

end
