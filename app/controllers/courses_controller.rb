class CoursesController < ApplicationController
  def index
    @courses = Course.all
    @course = Course.find(1)
    render :json => @courses
  end
  
  
  
end
