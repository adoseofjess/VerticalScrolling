class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.boolean :locked

      t.timestamps
    end
  end
end
