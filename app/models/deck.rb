class Deck < ActiveRecord::Base
  belongs_to :path
  belongs_to :user
  has_many :facts

  # def find_deck_by_stage(stage, path_id)
  #   path = Path.find(path_id)
  #   @unicorn = path.decks.find_by(stage: stage)
  # end
end
