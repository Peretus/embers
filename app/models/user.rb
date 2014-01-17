class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :decks
  has_many :enrollments
  has_many :paths, through: :enrollments
  has_many :known_facts
  has_many :facts, through: :known_facts
end
