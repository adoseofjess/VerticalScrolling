class Answer < ActiveRecord::Base
  attr_accessible :body, :correct, :question_id
  
  belongs_to :question
end
