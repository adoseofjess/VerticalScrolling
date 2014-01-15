class RemoveCurrentLessonIdFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :current_lesson_id
    add_column :users, :current_lesson_id, :integer
  end
end
