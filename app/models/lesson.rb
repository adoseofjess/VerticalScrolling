class Lesson < ActiveRecord::Base
  attr_accessible :locked, :title, :introduction, :course_id
  belongs_to :course
  has_many :sublessons
  has_many :quizzes
end
