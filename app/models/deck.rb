class Deck < ActiveRecord::Base
  belongs_to :path
  belongs_to :user
  has_many :facts
end
