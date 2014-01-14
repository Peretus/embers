class User < ActiveRecord::Base
  has_many :enrollments
  has_many :paths, through: :enrollments
end
