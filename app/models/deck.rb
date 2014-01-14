class Deck < ActiveRecord::Base
  belongs_to :path
  has_many :facts
end
