class Sublesson < ActiveRecord::Base
  attr_accessible :title, :body, :lesson_id
  
  belongs_to :lesson
end
