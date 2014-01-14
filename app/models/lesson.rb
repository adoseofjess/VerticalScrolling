class Lesson < ActiveRecord::Base
  attr_accessible :locked, :title, :introduction, :course_id
  belongs_to :course
  belongs_to(
    :user, 
    :class_name => "User", 
    :foreign_key => :user_id,
    :primary_key => :id
  )
  has_many :sublessons
  has_many :quizzes
end
