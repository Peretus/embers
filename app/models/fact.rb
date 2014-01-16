class Fact < ActiveRecord::Base
  belongs_to :deck
  has_many :cards



  def split_to_answer_objects 
    self.definition.split(' ')
  end

end
