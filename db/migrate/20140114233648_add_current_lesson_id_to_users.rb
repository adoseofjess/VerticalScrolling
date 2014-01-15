class AddCurrentLessonIdToUsers < ActiveRecord::Migration
  def change
    remove_column :lessons, :user_id
    add_column :users, :current_lesson_id, :integer, :default => 0
  end
end
