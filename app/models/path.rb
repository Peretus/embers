class Path < ActiveRecord::Base
  has_many :enrollments
  has_many :decks
  has_many :users, through: :enrollments
end
