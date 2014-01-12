class Quiz < ActiveRecord::Base
  attr_accessible :lesson_id
  
  belongs_to :lesson
  has_many :questions
end
