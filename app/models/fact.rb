class Fact < ActiveRecord::Base
  belongs_to :deck
  has_many :cards



  def split_to_answer_objects 
    spaced_word = self.definition.gsub('.', " . ")
    spaced_word.split(' ')
  end

  def shuffled_answer_objects
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
