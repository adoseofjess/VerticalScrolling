class AddIntroToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :introduction, :string
    add_column :sublessons, :body, :string
  end
end
