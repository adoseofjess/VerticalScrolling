class AddIdsToTables < ActiveRecord::Migration
  def change
    add_column :courses, :lesson_id, :integer
    add_column :lessons, :quiz_id, :integer
    add_column :lessons, :sublesson_id, :integer
    add_column :quizzes, :question_id, :integer
    add_column :questions, :answer_id, :integer
  end
end
