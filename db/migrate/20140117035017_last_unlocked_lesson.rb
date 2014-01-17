class LastUnlockedLesson < ActiveRecord::Migration
  def change
    add_column :users, :last_unlocked_lesson, :string
  end
end
