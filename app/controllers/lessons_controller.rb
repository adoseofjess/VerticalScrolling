class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
    render :json => @lessons
  end
  
  def show
    @lesson = Lesson.find(params[:id])
    render :json => @lesson
  end
  
  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update_attributes(params[:lesson])
    
    render :json => @lesson
  end
end
