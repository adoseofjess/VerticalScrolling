class Lesson < ActiveRecord::Base
  attr_accessible :locked, :title
  belongs_to :course
end
