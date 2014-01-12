class Course < ActiveRecord::Base
  attr_accessible :title, :description
  has_many :lessons
  
  def as_json(options={})
    super(:include => [:lessons => {:include => [:sublessons, :quizzes => {:include => [:questions => {:include => [:answers]}]}]}])
  end
end
