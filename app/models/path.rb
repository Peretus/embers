class Path < ActiveRecord::Base
  has_many :enrollments
  has_many :users, through: :enrollments
  has_many :decks
end
