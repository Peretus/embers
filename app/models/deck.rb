class Deck < ActiveRecord::Base
  belongs_to :path
  belongs_to :user
  has_many :facts

  # def find_decks_by_stage(stage_number)
  #   Deck.all.where('stage: < stage_number')
  # end

end
