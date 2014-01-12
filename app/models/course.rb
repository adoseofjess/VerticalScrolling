class Course < ActiveRecord::Base
  attr_accessible :title
  has_many :lessons
end
