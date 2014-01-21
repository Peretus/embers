class Fact < ActiveRecord::Base
  belongs_to :deck
  has_many :cards
  has_many :known_facts
  has_many :users, through: :known_facts


  def split_to_answer_objects 
    spaced_word = self.definition.gsub('.', " . ")
    new_spaced_word = spaced_word.gsub("(", " (")
    new_spaced_word.split(' ')
  end


  def correct_answer? (answer, response)
      
      
    concat_response = response.join(" ")
    normalized_response = concat_response.gsub(' . ', '.')
    normalized_response == answer
  end

  def remove_spaces
    self.definition.gsub(" ", "")
  end




end
