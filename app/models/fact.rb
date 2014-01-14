class Fact < ActiveRecord::Base
  belongs_to :deck
  has_many :cards
end
