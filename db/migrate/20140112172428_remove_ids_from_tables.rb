class RemoveIdsFromTables < ActiveRecord::Migration
  def change
    remove_column :courses, :lesson_id
    remove_column :lessons, :quiz_id
    remove_column :lessons, :sublesson_id
    remove_column :quizzes, :question_id
    remove_column :questions, :answer_id
    add_column :lessons, :course_id, :integer
    add_column :quizzes, :lesson_id, :integer
    add_column :sublessons, :lesson_id, :integer
    add_column :questions, :quiz_id, :integer
    add_column :answers, :question_id, :integer
  end
end
