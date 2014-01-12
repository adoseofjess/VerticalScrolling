class Question < ActiveRecord::Base
  attr_accessible :body, :quiz_id
  
  belongs_to :quiz
  has_many :answers
end
