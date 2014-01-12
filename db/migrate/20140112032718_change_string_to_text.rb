class ChangeStringToText < ActiveRecord::Migration
  def up
    change_column :courses, :description, :text
    change_column :lessons, :introduction, :text
    change_column :sublessons, :body, :text
  end

  def down
    change_column :courses, :description, :string
    change_column :lessons, :introduction, :string
    change_column :sublessons, :body, :string
  end
end
